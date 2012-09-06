.class public Lcom/google/android/apps/docs/sync/filemanager/FileProvider;
.super Landroid/content/ContentProvider;
.source "FileProvider.java"


# static fields
.field public static final a:Landroid/net/Uri;

.field private static final a:Ljava/security/SecureRandom;

.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "LRc;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 57
    const-string v0, "content://com.google.android.apps.docs.files/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/docs/sync/filemanager/FileProvider;->a:Landroid/net/Uri;

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/apps/docs/sync/filemanager/FileProvider;->a:Ljava/util/Map;

    .line 71
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lcom/google/android/apps/docs/sync/filemanager/FileProvider;->a:Ljava/security/SecureRandom;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 59
    return-void
.end method

.method public static a(LQW;Ljava/lang/String;)Landroid/net/Uri;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 78
    const-class v1, Lcom/google/android/apps/docs/sync/filemanager/FileProvider;

    monitor-enter v1

    .line 83
    :cond_3
    :try_start_3
    sget-object v0, Lcom/google/android/apps/docs/sync/filemanager/FileProvider;->a:Ljava/security/SecureRandom;

    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 84
    sget-object v2, Lcom/google/android/apps/docs/sync/filemanager/FileProvider;->a:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 85
    sget-object v2, Lcom/google/android/apps/docs/sync/filemanager/FileProvider;->a:Ljava/util/Map;

    new-instance v3, LRc;

    invoke-direct {v3, p0, p1}, LRc;-><init>(LQW;Ljava/lang/String;)V

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v2, Lcom/google/android/apps/docs/sync/filemanager/FileProvider;->a:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v3, 0x2f

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 87
    :catchall_3a
    move-exception v0

    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_3 .. :try_end_3c} :catchall_3a

    throw v0
.end method

.method static a(Landroid/net/Uri;)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    .line 111
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 112
    const-string v1, "content://com.google.android.apps.docs.files/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, LafQ;->a(Z)V

    .line 113
    const-string v1, "content://com.google.android.apps.docs.files/"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 114
    const/4 v1, 0x0

    const/16 v2, 0x2f

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 115
    return-object v0
.end method

.method public static a(Landroid/net/Uri;)V
    .registers 4
    .parameter

    .prologue
    .line 94
    const-class v1, Lcom/google/android/apps/docs/sync/filemanager/FileProvider;

    monitor-enter v1

    .line 95
    :try_start_3
    invoke-static {p0}, Lcom/google/android/apps/docs/sync/filemanager/FileProvider;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 96
    sget-object v2, Lcom/google/android/apps/docs/sync/filemanager/FileProvider;->a:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LRc;

    iget-object v0, v0, LRc;->a:LQW;

    .line 97
    if-eqz v0, :cond_19

    const/4 v0, 0x1

    :goto_14
    invoke-static {v0}, LafQ;->a(Z)V

    .line 98
    monitor-exit v1

    .line 99
    return-void

    .line 97
    :cond_19
    const/4 v0, 0x0

    goto :goto_14

    .line 98
    :catchall_1b
    move-exception v0

    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v0
.end method

.method static b(Landroid/net/Uri;)Ljava/lang/String;
    .registers 5
    .parameter

    .prologue
    .line 123
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 124
    const-string v1, "content://com.google.android.apps.docs.files/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, LafQ;->a(Z)V

    .line 125
    const-string v1, "content://com.google.android.apps.docs.files/"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 126
    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 128
    :try_start_23
    sget-object v1, LafC;->c:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2c
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_23 .. :try_end_2c} :catch_2e

    move-result-object v0

    .line 129
    return-object v0

    .line 130
    :catch_2e
    move-exception v0

    .line 131
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UTF-8 not supported: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method


# virtual methods
.method public c(Landroid/net/Uri;)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    .line 161
    sget-object v0, Lcom/google/android/apps/docs/sync/filemanager/FileProvider;->a:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 162
    const-string v0, ""

    .line 165
    :goto_a
    return-object v0

    .line 164
    :cond_b
    invoke-static {p1}, Lcom/google/android/apps/docs/sync/filemanager/FileProvider;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 165
    sget-object v1, Lcom/google/android/apps/docs/sync/filemanager/FileProvider;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LRc;

    iget-object v0, v0, LRc;->a:Ljava/lang/String;

    goto :goto_a
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 205
    const/4 v0, 0x0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 7
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 137
    sget-object v0, Lcom/google/android/apps/docs/sync/filemanager/FileProvider;->a:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 138
    const-string v0, "application/octet-stream"

    .line 154
    :goto_b
    return-object v0

    .line 140
    :cond_c
    const-class v3, Lcom/google/android/apps/docs/sync/filemanager/FileProvider;

    monitor-enter v3

    .line 141
    :try_start_f
    invoke-static {p1}, Lcom/google/android/apps/docs/sync/filemanager/FileProvider;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 142
    sget-object v2, Lcom/google/android/apps/docs/sync/filemanager/FileProvider;->a:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LRc;

    iget-object v0, v0, LRc;->a:LQW;

    .line 143
    if-nez v0, :cond_28

    .line 144
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 157
    :catchall_25
    move-exception v0

    monitor-exit v3
    :try_end_27
    .catchall {:try_start_f .. :try_end_27} :catchall_25

    throw v0

    .line 148
    :cond_28
    :try_start_28
    invoke-static {p1}, Lcom/google/android/apps/docs/sync/filemanager/FileProvider;->b(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "r"

    invoke-interface {v0, v2, v4}, LQW;->a(Ljava/lang/String;Ljava/lang/String;)LQX;
    :try_end_31
    .catchall {:try_start_28 .. :try_end_31} :catchall_47
    .catch Ljava/io/FileNotFoundException; {:try_start_28 .. :try_end_31} :catch_3d

    move-result-object v2

    .line 149
    :try_start_32
    invoke-interface {v2}, LQX;->a()Ljava/lang/String;
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_4e
    .catch Ljava/io/FileNotFoundException; {:try_start_32 .. :try_end_35} :catch_51

    move-result-object v0

    .line 153
    if-eqz v2, :cond_3b

    .line 154
    :try_start_38
    invoke-interface {v2}, LQX;->a()V

    :cond_3b
    monitor-exit v3

    goto :goto_b

    .line 150
    :catch_3d
    move-exception v0

    move-object v0, v1

    .line 153
    :goto_3f
    if-eqz v0, :cond_44

    .line 154
    invoke-interface {v0}, LQX;->a()V

    :cond_44
    monitor-exit v3

    move-object v0, v1

    goto :goto_b

    .line 153
    :catchall_47
    move-exception v0

    :goto_48
    if-eqz v1, :cond_4d

    .line 154
    invoke-interface {v1}, LQX;->a()V

    :cond_4d
    throw v0
    :try_end_4e
    .catchall {:try_start_38 .. :try_end_4e} :catchall_25

    .line 153
    :catchall_4e
    move-exception v0

    move-object v1, v2

    goto :goto_48

    .line 150
    :catch_51
    move-exception v0

    move-object v0, v2

    goto :goto_3f
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 210
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public onCreate()Z
    .registers 2

    .prologue
    .line 200
    const/4 v0, 0x1

    return v0
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 170
    const-class v2, Lcom/google/android/apps/docs/sync/filemanager/FileProvider;

    monitor-enter v2

    .line 171
    :try_start_4
    invoke-static {p1}, Lcom/google/android/apps/docs/sync/filemanager/FileProvider;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 172
    sget-object v3, Lcom/google/android/apps/docs/sync/filemanager/FileProvider;->a:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LRc;

    iget-object v0, v0, LRc;->a:LQW;

    .line 173
    if-nez v0, :cond_1d

    .line 174
    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-direct {v0}, Ljava/io/FileNotFoundException;-><init>()V

    throw v0

    .line 195
    :catchall_1a
    move-exception v0

    monitor-exit v2
    :try_end_1c
    .catchall {:try_start_4 .. :try_end_1c} :catchall_1a

    throw v0

    .line 178
    :cond_1d
    :try_start_1d
    invoke-static {p1}, Lcom/google/android/apps/docs/sync/filemanager/FileProvider;->b(Landroid/net/Uri;)Ljava/lang/String;
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_1a

    .line 180
    :try_start_20
    invoke-static {p1}, Lcom/google/android/apps/docs/sync/filemanager/FileProvider;->b(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, p2}, LQW;->a(Ljava/lang/String;Ljava/lang/String;)LQX;
    :try_end_27
    .catchall {:try_start_20 .. :try_end_27} :catchall_46
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_27} :catch_34

    move-result-object v0

    .line 182
    :try_start_28
    invoke-static {v0}, Lcom/google/android/apps/docs/sync/filemanager/FileProvider$WrappedParcelFileDescriptor;->a(LQX;)Lcom/google/android/apps/docs/sync/filemanager/FileProvider$WrappedParcelFileDescriptor;
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_3c
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2b} :catch_48

    move-result-object v0

    .line 186
    const/4 v3, 0x0

    .line 191
    if-eqz v1, :cond_32

    .line 192
    :try_start_2f
    invoke-interface {v3}, LQX;->a()V

    :cond_32
    monitor-exit v2
    :try_end_33
    .catchall {:try_start_2f .. :try_end_33} :catchall_1a

    return-object v0

    .line 188
    :catch_34
    move-exception v0

    move-object v0, v1

    .line 189
    :goto_36
    :try_start_36
    new-instance v1, Ljava/io/FileNotFoundException;

    invoke-direct {v1}, Ljava/io/FileNotFoundException;-><init>()V

    throw v1
    :try_end_3c
    .catchall {:try_start_36 .. :try_end_3c} :catchall_3c

    .line 191
    :catchall_3c
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_40
    if-eqz v1, :cond_45

    .line 192
    :try_start_42
    invoke-interface {v1}, LQX;->a()V

    :cond_45
    throw v0
    :try_end_46
    .catchall {:try_start_42 .. :try_end_46} :catchall_1a

    .line 191
    :catchall_46
    move-exception v0

    goto :goto_40

    .line 188
    :catch_48
    move-exception v1

    goto :goto_36
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 217
    if-nez p2, :cond_14

    .line 218
    const/4 v1, 0x3

    new-array p2, v1, [Ljava/lang/String;

    const-string v1, "_data"

    aput-object v1, p2, v0

    const/4 v1, 0x1

    const-string v2, "mime_type"

    aput-object v2, p2, v1

    const/4 v1, 0x2

    const-string v2, "_display_name"

    aput-object v2, p2, v1

    .line 221
    :cond_14
    new-instance v3, Landroid/database/MatrixCursor;

    invoke-direct {v3, p2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 222
    invoke-virtual {v3}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v4

    .line 226
    invoke-virtual {p0, p1}, Lcom/google/android/apps/docs/sync/filemanager/FileProvider;->c(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 227
    array-length v5, p2

    move v2, v0

    :goto_23
    if-ge v2, v5, :cond_6f

    aget-object v0, p2, v2

    .line 229
    const-string v6, "_data"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_37

    move-object v0, v1

    .line 247
    :goto_30
    invoke-virtual {v4, v0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 227
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_23

    .line 231
    :cond_37
    const-string v6, "_display_name"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5f

    .line 234
    invoke-virtual {p0, p1}, Lcom/google/android/apps/docs/sync/filemanager/FileProvider;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 235
    const-string v6, "application/pdf"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70

    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ".pdf"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_30

    .line 242
    :cond_5f
    const-string v6, "mime_type"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 243
    invoke-virtual {p0, p1}, Lcom/google/android/apps/docs/sync/filemanager/FileProvider;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    goto :goto_30

    .line 245
    :cond_6c
    const-string v0, ""

    goto :goto_30

    .line 249
    :cond_6f
    return-object v3

    :cond_70
    move-object v0, v1

    goto :goto_30
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 254
    const/4 v0, 0x0

    return v0
.end method
