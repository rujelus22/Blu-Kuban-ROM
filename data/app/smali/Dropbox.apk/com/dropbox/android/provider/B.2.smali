.class public Lcom/dropbox/android/provider/B;
.super Ljava/lang/Object;
.source "panda.py"


# static fields
.field public static final a:[Ljava/lang/String;

.field private static final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 13
    const-class v0, Lcom/dropbox/android/provider/B;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dropbox/android/provider/B;->b:Ljava/lang/String;

    .line 18
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "dropbox._id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "_display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "icon"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "bytes"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "modified"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "path"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "mime_type"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "is_dir"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "is_favorite"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "revision"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "_data"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "local_revision"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "encoding"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "hash"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "thumb_exists"

    aput-object v2, v0, v1

    sput-object v0, Lcom/dropbox/android/provider/B;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/database/Cursor;)Lcom/dropbox/android/filemanager/LocalEntry;
    .registers 6
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 55
    if-eqz p0, :cond_92

    .line 57
    :try_start_4
    new-instance v0, Lcom/dropbox/android/filemanager/LocalEntry;

    invoke-direct {v0}, Lcom/dropbox/android/filemanager/LocalEntry;-><init>()V

    .line 58
    const/4 v3, 0x1

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/dropbox/android/filemanager/LocalEntry;->b:Ljava/lang/String;

    .line 59
    const/4 v3, 0x2

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/dropbox/android/filemanager/LocalEntry;->j:Ljava/lang/String;

    .line 60
    const/4 v3, 0x5

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/dropbox/android/filemanager/LocalEntry;->n:Ljava/lang/String;

    .line 61
    const/4 v3, 0x6

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/dropbox/android/filemanager/LocalEntry;->q:Ljava/lang/String;

    .line 62
    const/4 v3, 0x7

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_7b

    move v3, v1

    :goto_2d
    iput-boolean v3, v0, Lcom/dropbox/android/filemanager/LocalEntry;->k:Z

    .line 63
    const/16 v3, 0x9

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/dropbox/android/filemanager/LocalEntry;->r:Ljava/lang/String;

    .line 64
    const/4 v3, 0x4

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/dropbox/android/filemanager/LocalEntry;->l:Ljava/lang/String;

    .line 65
    const/4 v3, 0x3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v0, Lcom/dropbox/android/filemanager/LocalEntry;->h:J

    .line 66
    const/16 v3, 0x8

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_7d

    move v3, v1

    :goto_4e
    iput-boolean v3, v0, Lcom/dropbox/android/filemanager/LocalEntry;->f:Z

    .line 67
    const/16 v3, 0xa

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/dropbox/android/filemanager/LocalEntry;->a:Ljava/lang/String;

    .line 68
    const/16 v3, 0xb

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/dropbox/android/filemanager/LocalEntry;->c:Ljava/lang/String;

    .line 69
    const/16 v3, 0xc

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/dropbox/android/filemanager/LocalEntry;->g:Ljava/lang/String;

    .line 70
    const/16 v3, 0xd

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/dropbox/android/filemanager/LocalEntry;->i:Ljava/lang/String;

    .line 71
    const/16 v3, 0xe

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_7f

    :goto_78
    iput-boolean v1, v0, Lcom/dropbox/android/filemanager/LocalEntry;->s:Z
    :try_end_7a
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_7a} :catch_81

    .line 79
    :goto_7a
    return-object v0

    :cond_7b
    move v3, v2

    .line 62
    goto :goto_2d

    :cond_7d
    move v3, v2

    .line 66
    goto :goto_4e

    :cond_7f
    move v1, v2

    .line 71
    goto :goto_78

    .line 73
    :catch_81
    move-exception v0

    .line 75
    sget-object v1, Lcom/dropbox/android/provider/B;->b:Ljava/lang/String;

    const-string v2, "Error making an entry from cursor!"

    invoke-static {v1, v2}, Ldbxyzptlk/h/f;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-static {}, Ldbxyzptlk/h/b;->b()Ldbxyzptlk/h/b;

    move-result-object v1

    sget-object v2, Ldbxyzptlk/h/e;->b:Ldbxyzptlk/h/e;

    invoke-virtual {v1, v0, v2}, Ldbxyzptlk/h/b;->a(Ljava/lang/Throwable;Ldbxyzptlk/h/e;)V

    .line 79
    :cond_92
    const/4 v0, 0x0

    goto :goto_7a
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 91
    const-string v0, "\\."

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 92
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static a([Ljava/lang/String;)[Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    .line 96
    array-length v0, p0

    new-array v1, v0, [Ljava/lang/String;

    .line 97
    const/4 v0, 0x0

    :goto_4
    array-length v2, p0

    if-ge v0, v2, :cond_12

    .line 98
    aget-object v2, p0, v0

    invoke-static {v2}, Lcom/dropbox/android/provider/B;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 97
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 100
    :cond_12
    return-object v1
.end method
