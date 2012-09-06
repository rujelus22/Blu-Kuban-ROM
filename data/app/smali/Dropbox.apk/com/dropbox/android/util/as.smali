.class public final Lcom/dropbox/android/util/as;
.super Ljava/lang/Object;
.source "panda.py"


# static fields
.field private static final a:[Ljava/lang/String;


# instance fields
.field private final b:Landroid/content/ContentResolver;

.field private final c:Landroid/net/Uri;

.field private d:Z

.field private e:J

.field private f:Landroid/database/Cursor;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 22
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "_data"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "_size"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "mime_type"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "date_modified"

    aput-object v2, v0, v1

    sput-object v0, Lcom/dropbox/android/util/as;->a:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dropbox/android/util/as;->d:Z

    .line 33
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/dropbox/android/util/as;->e:J

    .line 37
    iput-object p1, p0, Lcom/dropbox/android/util/as;->b:Landroid/content/ContentResolver;

    .line 38
    iput-object p2, p0, Lcom/dropbox/android/util/as;->c:Landroid/net/Uri;

    .line 39
    invoke-direct {p0}, Lcom/dropbox/android/util/as;->c()V

    .line 40
    return-void
.end method

.method public static a(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/dropbox/android/util/as;
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 50
    :try_start_1
    new-instance v0, Lcom/dropbox/android/util/as;

    invoke-direct {v0, p0, p1}, Lcom/dropbox/android/util/as;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_b

    .line 61
    iget-object v2, v0, Lcom/dropbox/android/util/as;->f:Landroid/database/Cursor;

    if-eqz v2, :cond_17

    .line 64
    :goto_a
    return-object v0

    .line 51
    :catch_b
    move-exception v0

    .line 57
    invoke-static {}, Ldbxyzptlk/h/b;->b()Ldbxyzptlk/h/b;

    move-result-object v2

    sget-object v3, Ldbxyzptlk/h/e;->b:Ldbxyzptlk/h/e;

    invoke-virtual {v2, v0, v3}, Ldbxyzptlk/h/b;->a(Ljava/lang/Throwable;Ldbxyzptlk/h/e;)V

    move-object v0, v1

    .line 58
    goto :goto_a

    :cond_17
    move-object v0, v1

    .line 64
    goto :goto_a
.end method

.method private c()V
    .registers 13

    .prologue
    const/16 v11, 0x64

    const/4 v10, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 109
    iget-object v0, p0, Lcom/dropbox/android/util/as;->c:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "limit"

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 113
    iget-boolean v0, p0, Lcom/dropbox/android/util/as;->d:Z

    if-eqz v0, :cond_5f

    iget-wide v2, p0, Lcom/dropbox/android/util/as;->e:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-ltz v0, :cond_5f

    .line 114
    const-string v3, "(mime_type LIKE ? OR mime_type LIKE ?) AND _id < ?"

    .line 117
    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/String;

    const-string v0, "image/%"

    aput-object v0, v4, v7

    const-string v0, "video/%"

    aput-object v0, v4, v6

    iget-wide v8, p0, Lcom/dropbox/android/util/as;->e:J

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v10

    .line 124
    :goto_3a
    iget-object v0, p0, Lcom/dropbox/android/util/as;->f:Landroid/database/Cursor;

    if-eqz v0, :cond_43

    .line 125
    iget-object v0, p0, Lcom/dropbox/android/util/as;->f:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 128
    :cond_43
    iget-object v0, p0, Lcom/dropbox/android/util/as;->b:Landroid/content/ContentResolver;

    sget-object v2, Lcom/dropbox/android/util/as;->a:[Ljava/lang/String;

    const-string v5, "_id DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/android/util/as;->f:Landroid/database/Cursor;

    .line 134
    iget-object v0, p0, Lcom/dropbox/android/util/as;->f:Landroid/database/Cursor;

    if-eqz v0, :cond_6c

    iget-object v0, p0, Lcom/dropbox/android/util/as;->f:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v11, :cond_6c

    move v0, v6

    :goto_5c
    iput-boolean v0, p0, Lcom/dropbox/android/util/as;->d:Z

    .line 135
    return-void

    .line 119
    :cond_5f
    const-string v3, "mime_type LIKE ? OR mime_type LIKE ?"

    .line 121
    new-array v4, v10, [Ljava/lang/String;

    const-string v0, "image/%"

    aput-object v0, v4, v7

    const-string v0, "video/%"

    aput-object v0, v4, v6

    goto :goto_3a

    :cond_6c
    move v0, v7

    .line 134
    goto :goto_5c
.end method


# virtual methods
.method public final a(Ljava/lang/String;)I
    .registers 3
    .parameter

    .prologue
    .line 99
    iget-object v0, p0, Lcom/dropbox/android/util/as;->f:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final a(I)J
    .registers 4
    .parameter

    .prologue
    .line 91
    iget-object v0, p0, Lcom/dropbox/android/util/as;->f:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public final a()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 69
    iget-object v1, p0, Lcom/dropbox/android/util/as;->f:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 71
    const/4 v0, 0x1

    .line 86
    :cond_a
    :goto_a
    return v0

    .line 74
    :cond_b
    iget-boolean v1, p0, Lcom/dropbox/android/util/as;->d:Z

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/dropbox/android/util/as;->f:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToLast()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 76
    invoke-virtual {p0, v0}, Lcom/dropbox/android/util/as;->a(I)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/dropbox/android/util/as;->e:J

    .line 77
    invoke-direct {p0}, Lcom/dropbox/android/util/as;->c()V

    .line 78
    iget-object v1, p0, Lcom/dropbox/android/util/as;->f:Landroid/database/Cursor;

    if-eqz v1, :cond_a

    .line 83
    iget-object v0, p0, Lcom/dropbox/android/util/as;->f:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    goto :goto_a
.end method

.method public final b(I)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 95
    iget-object v0, p0, Lcom/dropbox/android/util/as;->f:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b()V
    .registers 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/dropbox/android/util/as;->f:Landroid/database/Cursor;

    if-eqz v0, :cond_9

    .line 104
    iget-object v0, p0, Lcom/dropbox/android/util/as;->f:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 106
    :cond_9
    return-void
.end method
