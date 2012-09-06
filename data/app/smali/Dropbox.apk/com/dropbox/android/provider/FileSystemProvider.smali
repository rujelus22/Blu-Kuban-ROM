.class public Lcom/dropbox/android/provider/FileSystemProvider;
.super Landroid/content/ContentProvider;
.source "panda.py"


# static fields
.field private static final a:Landroid/net/Uri;

.field private static final b:Landroid/net/Uri;

.field private static final c:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 26
    const-string v0, "content://com.dropbox.android.LocalFile"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/dropbox/android/provider/FileSystemProvider;->a:Landroid/net/Uri;

    .line 29
    sget-object v0, Lcom/dropbox/android/provider/FileSystemProvider;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "internal"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/dropbox/android/provider/FileSystemProvider;->b:Landroid/net/Uri;

    .line 32
    sget-object v0, Lcom/dropbox/android/provider/FileSystemProvider;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "sdcard"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/dropbox/android/provider/FileSystemProvider;->c:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 303
    return-void
.end method

.method private a(Ljava/util/List;Landroid/net/Uri;Lcom/dropbox/android/provider/o;ZZ)Landroid/database/Cursor;
    .registers 15
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 272
    new-instance v3, Landroid/database/MatrixCursor;

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "uri"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "path"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "filename"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "is_dir"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "size"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "modified"

    aput-object v2, v0, v1

    invoke-direct {v3, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 275
    const/4 v0, 0x1

    .line 276
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v0

    :goto_31
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 277
    const/4 v1, 0x7

    new-array v5, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    const/4 v6, 0x1

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v6

    const/4 v6, 0x2

    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v6

    const/4 v6, 0x3

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/dropbox/android/provider/FileSystemProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/dropbox/android/provider/FileSystemProvider;->a(Landroid/net/Uri;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v6

    const/4 v6, 0x4

    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v6

    const/4 v6, 0x5

    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v5, v6

    const/4 v1, 0x6

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v5, v1

    invoke-virtual {v3, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 286
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_31

    .line 290
    :cond_a0
    sget-object v0, Lcom/dropbox/android/provider/o;->d:Lcom/dropbox/android/provider/o;

    if-eq p3, v0, :cond_b0

    sget-object v0, Lcom/dropbox/android/provider/o;->e:Lcom/dropbox/android/provider/o;

    if-eq p3, v0, :cond_b0

    sget-object v0, Lcom/dropbox/android/provider/o;->a:Lcom/dropbox/android/provider/o;

    if-eq p3, v0, :cond_d6

    if-eqz p4, :cond_d6

    if-eqz p5, :cond_d6

    .line 292
    :cond_b0
    invoke-static {p2}, Lcom/dropbox/android/provider/FileSystemProvider;->c(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0}, Lcom/dropbox/android/provider/FileSystemProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dropbox/android/provider/FileSystemProvider;->a(Landroid/net/Uri;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 293
    invoke-static {v0}, Lcom/dropbox/android/provider/E;->b(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 294
    new-instance v1, Lcom/dropbox/android/provider/C;

    const-string v2, "_up_folder"

    invoke-direct {v1, v0, v2}, Lcom/dropbox/android/provider/C;-><init>(Landroid/database/Cursor;Ljava/lang/String;)V

    .line 296
    const/4 v0, 0x2

    new-array v2, v0, [Landroid/database/Cursor;

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const/4 v0, 0x1

    aput-object v3, v2, v0

    .line 297
    new-instance v0, Landroid/database/MergeCursor;

    invoke-direct {v0, v2}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    .line 299
    :goto_d5
    return-object v0

    :cond_d6
    move-object v0, v3

    goto :goto_d5
.end method

.method public static a()Landroid/net/Uri;
    .registers 2

    .prologue
    .line 53
    invoke-static {}, Lcom/dropbox/android/util/ab;->c()Z

    move-result v0

    .line 54
    invoke-static {}, Lcom/dropbox/android/util/ab;->d()Z

    move-result v1

    .line 55
    if-eqz v0, :cond_f

    if-eqz v1, :cond_f

    .line 56
    sget-object v0, Lcom/dropbox/android/provider/FileSystemProvider;->a:Landroid/net/Uri;

    .line 62
    :goto_e
    return-object v0

    .line 57
    :cond_f
    if-eqz v0, :cond_14

    .line 58
    sget-object v0, Lcom/dropbox/android/provider/FileSystemProvider;->b:Landroid/net/Uri;

    goto :goto_e

    .line 59
    :cond_14
    if-eqz v1, :cond_19

    .line 60
    sget-object v0, Lcom/dropbox/android/provider/FileSystemProvider;->c:Landroid/net/Uri;

    goto :goto_e

    .line 62
    :cond_19
    sget-object v0, Lcom/dropbox/android/provider/FileSystemProvider;->a:Landroid/net/Uri;

    goto :goto_e
.end method

.method public static a(Landroid/net/Uri;Landroid/content/Context;)Ljava/lang/String;
    .registers 6
    .parameter
    .parameter

    .prologue
    const v0, 0x7f0900c7

    const v1, 0x7f0900c6

    .line 74
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/dropbox/android/provider/FileSystemProvider;->a:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_33

    .line 75
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad authority: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_33
    invoke-static {p0}, Lcom/dropbox/android/provider/FileSystemProvider;->d(Landroid/net/Uri;)Lcom/dropbox/android/provider/o;

    move-result-object v2

    .line 79
    sget-object v3, Lcom/dropbox/android/provider/o;->a:Lcom/dropbox/android/provider/o;

    if-ne v2, v3, :cond_43

    .line 80
    const v0, 0x7f0900c5

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 102
    :goto_42
    return-object v0

    .line 81
    :cond_43
    sget-object v3, Lcom/dropbox/android/provider/o;->b:Lcom/dropbox/android/provider/o;

    if-eq v2, v3, :cond_4b

    sget-object v3, Lcom/dropbox/android/provider/o;->c:Lcom/dropbox/android/provider/o;

    if-ne v2, v3, :cond_75

    .line 82
    :cond_4b
    const/16 v3, 0x9

    invoke-static {v3}, Lcom/dropbox/android/util/bb;->a(I)Z

    move-result v3

    if-eqz v3, :cond_6c

    .line 87
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v3

    if-eqz v3, :cond_64

    .line 88
    sget-object v3, Lcom/dropbox/android/provider/o;->b:Lcom/dropbox/android/provider/o;

    if-ne v2, v3, :cond_62

    .line 94
    :goto_5d
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_42

    :cond_62
    move v0, v1

    .line 88
    goto :goto_5d

    .line 91
    :cond_64
    sget-object v3, Lcom/dropbox/android/provider/o;->b:Lcom/dropbox/android/provider/o;

    if-ne v2, v3, :cond_6a

    :goto_68
    move v0, v1

    goto :goto_5d

    :cond_6a
    move v1, v0

    goto :goto_68

    .line 98
    :cond_6c
    invoke-static {p0}, Lcom/dropbox/android/provider/FileSystemProvider;->b(Landroid/net/Uri;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_42

    .line 101
    :cond_75
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    .line 102
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_42
.end method

.method private static a(Landroid/net/Uri;Lcom/dropbox/android/provider/o;ZZLjava/io/File;Ljava/io/File;)Ljava/util/List;
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 223
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 225
    sget-object v1, Lcom/dropbox/android/provider/m;->a:[I

    invoke-virtual {p1}, Lcom/dropbox/android/provider/o;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_3e

    .line 248
    :cond_10
    :goto_10
    return-object v0

    .line 227
    :pswitch_11
    if-eqz p2, :cond_1d

    .line 228
    new-instance v1, Landroid/util/Pair;

    sget-object v2, Lcom/dropbox/android/provider/FileSystemProvider;->b:Landroid/net/Uri;

    invoke-direct {v1, v2, p4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    :cond_1d
    if-eqz p3, :cond_10

    .line 231
    new-instance v1, Landroid/util/Pair;

    sget-object v2, Lcom/dropbox/android/provider/FileSystemProvider;->c:Landroid/net/Uri;

    invoke-direct {v1, v2, p5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_10

    .line 236
    :pswitch_2a
    if-eqz p2, :cond_10

    .line 237
    invoke-static {p0}, Lcom/dropbox/android/provider/FileSystemProvider;->b(Landroid/net/Uri;)Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1, p0}, Lcom/dropbox/android/provider/FileSystemProvider;->a(Ljava/util/List;Ljava/io/File;Landroid/net/Uri;)V

    goto :goto_10

    .line 242
    :pswitch_34
    if-eqz p3, :cond_10

    .line 243
    invoke-static {p0}, Lcom/dropbox/android/provider/FileSystemProvider;->b(Landroid/net/Uri;)Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1, p0}, Lcom/dropbox/android/provider/FileSystemProvider;->a(Ljava/util/List;Ljava/io/File;Landroid/net/Uri;)V

    goto :goto_10

    .line 225
    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_2a
        :pswitch_2a
        :pswitch_34
        :pswitch_34
        :pswitch_11
    .end packed-switch
.end method

.method private static a(Ljava/util/List;Ljava/io/File;Landroid/net/Uri;)V
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 252
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result v0

    if-nez v0, :cond_d

    .line 267
    :cond_c
    return-void

    .line 256
    :cond_d
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 257
    if-eqz v1, :cond_c

    .line 258
    new-instance v0, Lcom/dropbox/android/provider/n;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/dropbox/android/provider/n;-><init>(Lcom/dropbox/android/provider/m;)V

    invoke-static {v1, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 259
    array-length v2, v1

    const/4 v0, 0x0

    :goto_1e
    if-ge v0, v2, :cond_c

    aget-object v3, v1, v0

    .line 260
    invoke-virtual {v3}, Ljava/io/File;->isHidden()Z

    move-result v4

    if-nez v4, :cond_40

    .line 261
    new-instance v4, Landroid/util/Pair;

    invoke-virtual {p2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    :cond_40
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e
.end method

.method public static a(Landroid/net/Uri;)Z
    .registers 3
    .parameter

    .prologue
    .line 112
    sget-object v0, Lcom/dropbox/android/provider/m;->a:[I

    invoke-static {p0}, Lcom/dropbox/android/provider/FileSystemProvider;->d(Landroid/net/Uri;)Lcom/dropbox/android/provider/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/android/provider/o;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_30

    .line 124
    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0

    .line 115
    :pswitch_11
    invoke-static {}, Lcom/dropbox/android/util/ab;->c()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 116
    invoke-static {p0}, Lcom/dropbox/android/provider/FileSystemProvider;->b(Landroid/net/Uri;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    goto :goto_10

    .line 120
    :cond_20
    :pswitch_20
    invoke-static {}, Lcom/dropbox/android/util/ab;->d()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 121
    invoke-static {p0}, Lcom/dropbox/android/provider/FileSystemProvider;->b(Landroid/net/Uri;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    goto :goto_10

    .line 112
    nop

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_11
        :pswitch_11
        :pswitch_20
        :pswitch_20
    .end packed-switch
.end method

.method public static b(Landroid/net/Uri;)Ljava/io/File;
    .registers 5
    .parameter

    .prologue
    .line 134
    const/4 v0, 0x0

    .line 135
    sget-object v1, Lcom/dropbox/android/provider/m;->a:[I

    invoke-static {p0}, Lcom/dropbox/android/provider/FileSystemProvider;->d(Landroid/net/Uri;)Lcom/dropbox/android/provider/o;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dropbox/android/provider/o;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_50

    .line 149
    :goto_10
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 150
    const/16 v2, 0x2f

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 151
    if-lez v2, :cond_4c

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 152
    :goto_23
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v2

    .line 137
    :pswitch_29
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t get file system path for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :pswitch_42
    invoke-static {}, Lcom/dropbox/android/util/ab;->g()Ljava/io/File;

    move-result-object v0

    goto :goto_10

    .line 144
    :pswitch_47
    invoke-static {}, Lcom/dropbox/android/util/ab;->h()Ljava/io/File;

    move-result-object v0

    goto :goto_10

    .line 151
    :cond_4c
    const-string v1, ""

    goto :goto_23

    .line 135
    nop

    :pswitch_data_50
    .packed-switch 0x1
        :pswitch_42
        :pswitch_42
        :pswitch_47
        :pswitch_47
        :pswitch_29
    .end packed-switch
.end method

.method public static c(Landroid/net/Uri;)Landroid/net/Uri;
    .registers 4
    .parameter

    .prologue
    .line 156
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 157
    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 158
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static d(Landroid/net/Uri;)Lcom/dropbox/android/provider/o;
    .registers 4
    .parameter

    .prologue
    .line 162
    sget-object v0, Lcom/dropbox/android/provider/FileSystemProvider;->a:Landroid/net/Uri;

    invoke-virtual {v0, p0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 163
    sget-object v0, Lcom/dropbox/android/provider/o;->a:Lcom/dropbox/android/provider/o;

    .line 171
    :goto_a
    return-object v0

    .line 164
    :cond_b
    sget-object v0, Lcom/dropbox/android/provider/FileSystemProvider;->b:Landroid/net/Uri;

    invoke-virtual {v0, p0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 165
    sget-object v0, Lcom/dropbox/android/provider/o;->b:Lcom/dropbox/android/provider/o;

    goto :goto_a

    .line 166
    :cond_16
    sget-object v0, Lcom/dropbox/android/provider/FileSystemProvider;->c:Landroid/net/Uri;

    invoke-virtual {v0, p0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 167
    sget-object v0, Lcom/dropbox/android/provider/o;->c:Lcom/dropbox/android/provider/o;

    goto :goto_a

    .line 168
    :cond_21
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/dropbox/android/provider/FileSystemProvider;->b:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 169
    sget-object v0, Lcom/dropbox/android/provider/o;->d:Lcom/dropbox/android/provider/o;

    goto :goto_a

    .line 170
    :cond_34
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/dropbox/android/provider/FileSystemProvider;->c:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 171
    sget-object v0, Lcom/dropbox/android/provider/o;->e:Lcom/dropbox/android/provider/o;

    goto :goto_a

    .line 174
    :cond_47
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid file system uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 179
    const/4 v0, 0x0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 184
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 189
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()Z
    .registers 2

    .prologue
    .line 195
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 16
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 202
    invoke-static {}, Lcom/dropbox/android/util/ab;->c()Z

    move-result v2

    .line 203
    invoke-static {}, Lcom/dropbox/android/util/ab;->d()Z

    move-result v3

    .line 204
    invoke-static {}, Lcom/dropbox/android/util/ab;->g()Ljava/io/File;

    move-result-object v4

    .line 205
    invoke-static {}, Lcom/dropbox/android/util/ab;->h()Ljava/io/File;

    move-result-object v5

    .line 206
    invoke-static {p1}, Lcom/dropbox/android/provider/FileSystemProvider;->d(Landroid/net/Uri;)Lcom/dropbox/android/provider/o;

    move-result-object v1

    move-object v0, p1

    .line 208
    invoke-static/range {v0 .. v5}, Lcom/dropbox/android/provider/FileSystemProvider;->a(Landroid/net/Uri;Lcom/dropbox/android/provider/o;ZZLjava/io/File;Ljava/io/File;)Ljava/util/List;

    move-result-object v5

    move-object v4, p0

    move-object v6, p1

    move-object v7, v1

    move v8, v2

    move v9, v3

    .line 211
    invoke-direct/range {v4 .. v9}, Lcom/dropbox/android/provider/FileSystemProvider;->a(Ljava/util/List;Landroid/net/Uri;Lcom/dropbox/android/provider/o;ZZ)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 216
    const/4 v0, 0x0

    return v0
.end method
