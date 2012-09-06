.class public Lcom/dropbox/android/taskqueue/ThumbnailTask;
.super Lcom/dropbox/android/taskqueue/k;
.source "panda.py"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Lcom/dropbox/android/util/Z;

.field private final d:Ldbxyzptlk/l/o;

.field private final h:Ljava/lang/String;

.field private final i:Ljava/lang/String;

.field private final j:Lcom/dropbox/android/taskqueue/p;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 24
    const-class v0, Lcom/dropbox/android/taskqueue/ThumbnailTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dropbox/android/taskqueue/ThumbnailTask;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ldbxyzptlk/l/o;Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/android/taskqueue/p;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/dropbox/android/taskqueue/k;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/dropbox/android/taskqueue/ThumbnailTask;->b:Ljava/lang/String;

    .line 35
    new-instance v0, Lcom/dropbox/android/util/Z;

    invoke-direct {v0, p1}, Lcom/dropbox/android/util/Z;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/dropbox/android/taskqueue/ThumbnailTask;->c:Lcom/dropbox/android/util/Z;

    .line 36
    iput-object p2, p0, Lcom/dropbox/android/taskqueue/ThumbnailTask;->d:Ldbxyzptlk/l/o;

    .line 37
    iput-object p3, p0, Lcom/dropbox/android/taskqueue/ThumbnailTask;->h:Ljava/lang/String;

    .line 38
    iput-object p4, p0, Lcom/dropbox/android/taskqueue/ThumbnailTask;->i:Ljava/lang/String;

    .line 39
    iput-object p5, p0, Lcom/dropbox/android/taskqueue/ThumbnailTask;->j:Lcom/dropbox/android/taskqueue/p;

    .line 40
    return-void
.end method

.method public static a(Ljava/lang/String;Ldbxyzptlk/l/o;)Ljava/lang/String;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "~"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final b()V
    .registers 1

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/dropbox/android/taskqueue/ThumbnailTask;->s()Lcom/dropbox/android/taskqueue/m;

    .line 62
    return-void
.end method

.method public final c()Lcom/dropbox/android/taskqueue/m;
    .registers 7

    .prologue
    .line 66
    invoke-super {p0}, Lcom/dropbox/android/taskqueue/k;->c()Lcom/dropbox/android/taskqueue/m;

    .line 68
    invoke-virtual {p0}, Lcom/dropbox/android/taskqueue/ThumbnailTask;->r()V

    .line 71
    :try_start_6
    invoke-static {}, Lcom/dropbox/android/filemanager/a;->a()Lcom/dropbox/android/filemanager/a;

    move-result-object v0

    .line 74
    iget-object v1, v0, Lcom/dropbox/android/filemanager/a;->a:Ldbxyzptlk/p/i;

    iget-object v2, p0, Lcom/dropbox/android/taskqueue/ThumbnailTask;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/dropbox/android/taskqueue/ThumbnailTask;->d:Ldbxyzptlk/l/o;

    iget-object v0, p0, Lcom/dropbox/android/taskqueue/ThumbnailTask;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/dropbox/android/util/aa;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/android/util/aa;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2f

    sget-object v0, Ldbxyzptlk/l/n;->a:Ldbxyzptlk/l/n;

    :goto_1e
    invoke-virtual {v1, v2, v3, v0}, Ldbxyzptlk/p/i;->a(Ljava/lang/String;Ldbxyzptlk/l/o;Ldbxyzptlk/l/n;)Ldbxyzptlk/l/i;
    :try_end_21
    .catch Ldbxyzptlk/m/g; {:try_start_6 .. :try_end_21} :catch_32
    .catch Ldbxyzptlk/m/a; {:try_start_6 .. :try_end_21} :catch_5d

    move-result-object v3

    .line 88
    invoke-static {}, Lcom/dropbox/android/util/ab;->a()Ljava/io/File;

    move-result-object v0

    .line 90
    if-nez v0, :cond_65

    .line 91
    sget-object v0, Lcom/dropbox/android/taskqueue/m;->e:Lcom/dropbox/android/taskqueue/m;

    invoke-virtual {p0, v0}, Lcom/dropbox/android/taskqueue/ThumbnailTask;->a(Lcom/dropbox/android/taskqueue/m;)Lcom/dropbox/android/taskqueue/m;

    move-result-object v0

    .line 146
    :cond_2e
    :goto_2e
    return-object v0

    .line 74
    :cond_2f
    :try_start_2f
    sget-object v0, Ldbxyzptlk/l/n;->b:Ldbxyzptlk/l/n;
    :try_end_31
    .catch Ldbxyzptlk/m/g; {:try_start_2f .. :try_end_31} :catch_32
    .catch Ldbxyzptlk/m/a; {:try_start_2f .. :try_end_31} :catch_5d

    goto :goto_1e

    .line 75
    :catch_32
    move-exception v0

    .line 76
    iget v1, v0, Ldbxyzptlk/m/g;->b:I

    const/16 v2, 0x194

    if-ne v1, v2, :cond_49

    .line 77
    invoke-static {}, Ldbxyzptlk/h/b;->b()Ldbxyzptlk/h/b;

    move-result-object v1

    sget-object v2, Ldbxyzptlk/h/e;->b:Ldbxyzptlk/h/e;

    invoke-virtual {v1, v0, v2}, Ldbxyzptlk/h/b;->a(Ljava/lang/Throwable;Ldbxyzptlk/h/e;)V

    .line 78
    sget-object v0, Lcom/dropbox/android/taskqueue/m;->m:Lcom/dropbox/android/taskqueue/m;

    invoke-virtual {p0, v0}, Lcom/dropbox/android/taskqueue/ThumbnailTask;->a(Lcom/dropbox/android/taskqueue/m;)Lcom/dropbox/android/taskqueue/m;

    move-result-object v0

    goto :goto_2e

    .line 79
    :cond_49
    iget v0, v0, Ldbxyzptlk/m/g;->b:I

    const/16 v1, 0x19f

    if-ne v0, v1, :cond_56

    .line 80
    sget-object v0, Lcom/dropbox/android/taskqueue/m;->m:Lcom/dropbox/android/taskqueue/m;

    invoke-virtual {p0, v0}, Lcom/dropbox/android/taskqueue/ThumbnailTask;->a(Lcom/dropbox/android/taskqueue/m;)Lcom/dropbox/android/taskqueue/m;

    move-result-object v0

    goto :goto_2e

    .line 82
    :cond_56
    sget-object v0, Lcom/dropbox/android/taskqueue/m;->c:Lcom/dropbox/android/taskqueue/m;

    invoke-virtual {p0, v0}, Lcom/dropbox/android/taskqueue/ThumbnailTask;->a(Lcom/dropbox/android/taskqueue/m;)Lcom/dropbox/android/taskqueue/m;

    move-result-object v0

    goto :goto_2e

    .line 84
    :catch_5d
    move-exception v0

    .line 85
    sget-object v0, Lcom/dropbox/android/taskqueue/m;->c:Lcom/dropbox/android/taskqueue/m;

    invoke-virtual {p0, v0}, Lcom/dropbox/android/taskqueue/ThumbnailTask;->a(Lcom/dropbox/android/taskqueue/m;)Lcom/dropbox/android/taskqueue/m;

    move-result-object v0

    goto :goto_2e

    .line 94
    :cond_65
    const/4 v2, 0x0

    .line 97
    :try_start_66
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_6b
    .catchall {:try_start_66 .. :try_end_6b} :catchall_10e
    .catch Ljava/lang/OutOfMemoryError; {:try_start_66 .. :try_end_6b} :catch_12f
    .catch Ljava/io/IOException; {:try_start_66 .. :try_end_6b} :catch_f7

    .line 98
    const/16 v2, 0x1000

    :try_start_6d
    new-array v2, v2, [B

    .line 101
    :goto_6f
    invoke-virtual {v3, v2}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .line 102
    if-gez v4, :cond_a9

    .line 109
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V
    :try_end_78
    .catchall {:try_start_6d .. :try_end_78} :catchall_12b
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6d .. :try_end_78} :catch_ae
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_78} :catch_12d

    .line 111
    :try_start_78
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/FileDescriptor;->sync()V
    :try_end_7f
    .catchall {:try_start_78 .. :try_end_7f} :catchall_12b
    .catch Ljava/io/SyncFailedException; {:try_start_78 .. :try_end_7f} :catch_133
    .catch Ljava/lang/OutOfMemoryError; {:try_start_78 .. :try_end_7f} :catch_ae
    .catch Ljava/io/IOException; {:try_start_78 .. :try_end_7f} :catch_12d

    .line 114
    :goto_7f
    :try_start_7f
    new-instance v2, Ljava/io/File;

    iget-object v4, p0, Lcom/dropbox/android/taskqueue/ThumbnailTask;->h:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 116
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    .line 117
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_cb

    .line 118
    invoke-static {v4}, Lcom/dropbox/android/util/ab;->b(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_cb

    .line 119
    sget-object v0, Lcom/dropbox/android/taskqueue/m;->e:Lcom/dropbox/android/taskqueue/m;

    invoke-virtual {p0, v0}, Lcom/dropbox/android/taskqueue/ThumbnailTask;->a(Lcom/dropbox/android/taskqueue/m;)Lcom/dropbox/android/taskqueue/m;
    :try_end_9b
    .catchall {:try_start_7f .. :try_end_9b} :catchall_12b
    .catch Ljava/lang/OutOfMemoryError; {:try_start_7f .. :try_end_9b} :catch_ae
    .catch Ljava/io/IOException; {:try_start_7f .. :try_end_9b} :catch_12d

    move-result-object v0

    .line 132
    if-eqz v1, :cond_a1

    .line 134
    :try_start_9e
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_a1
    .catch Ljava/io/IOException; {:try_start_9e .. :try_end_a1} :catch_11b

    .line 138
    :cond_a1
    :goto_a1
    if-eqz v3, :cond_2e

    .line 140
    :try_start_a3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_a6
    .catch Ljava/io/IOException; {:try_start_a3 .. :try_end_a6} :catch_a7

    goto :goto_2e

    .line 141
    :catch_a7
    move-exception v1

    goto :goto_2e

    .line 105
    :cond_a9
    const/4 v5, 0x0

    :try_start_aa
    invoke-virtual {v1, v2, v5, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_ad
    .catchall {:try_start_aa .. :try_end_ad} :catchall_12b
    .catch Ljava/lang/OutOfMemoryError; {:try_start_aa .. :try_end_ad} :catch_ae
    .catch Ljava/io/IOException; {:try_start_aa .. :try_end_ad} :catch_12d

    goto :goto_6f

    .line 126
    :catch_ae
    move-exception v0

    .line 127
    :goto_af
    :try_start_af
    sget-object v2, Lcom/dropbox/android/taskqueue/ThumbnailTask;->a:Ljava/lang/String;

    const-string v4, "Dropbox Gallery low on memory."

    invoke-static {v2, v4, v0}, Ldbxyzptlk/h/f;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 128
    sget-object v0, Lcom/dropbox/android/taskqueue/m;->g:Lcom/dropbox/android/taskqueue/m;

    invoke-virtual {p0, v0}, Lcom/dropbox/android/taskqueue/ThumbnailTask;->a(Lcom/dropbox/android/taskqueue/m;)Lcom/dropbox/android/taskqueue/m;
    :try_end_bb
    .catchall {:try_start_af .. :try_end_bb} :catchall_12b

    move-result-object v0

    .line 132
    if-eqz v1, :cond_c1

    .line 134
    :try_start_be
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_c1
    .catch Ljava/io/IOException; {:try_start_be .. :try_end_c1} :catch_123

    .line 138
    :cond_c1
    :goto_c1
    if-eqz v3, :cond_2e

    .line 140
    :try_start_c3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_c6
    .catch Ljava/io/IOException; {:try_start_c3 .. :try_end_c6} :catch_c8

    goto/16 :goto_2e

    .line 141
    :catch_c8
    move-exception v1

    goto/16 :goto_2e

    .line 123
    :cond_cb
    :try_start_cb
    invoke-virtual {v0, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_e6

    .line 124
    sget-object v0, Lcom/dropbox/android/taskqueue/m;->e:Lcom/dropbox/android/taskqueue/m;

    invoke-virtual {p0, v0}, Lcom/dropbox/android/taskqueue/ThumbnailTask;->a(Lcom/dropbox/android/taskqueue/m;)Lcom/dropbox/android/taskqueue/m;
    :try_end_d6
    .catchall {:try_start_cb .. :try_end_d6} :catchall_12b
    .catch Ljava/lang/OutOfMemoryError; {:try_start_cb .. :try_end_d6} :catch_ae
    .catch Ljava/io/IOException; {:try_start_cb .. :try_end_d6} :catch_12d

    move-result-object v0

    .line 132
    if-eqz v1, :cond_dc

    .line 134
    :try_start_d9
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_dc
    .catch Ljava/io/IOException; {:try_start_d9 .. :try_end_dc} :catch_11d

    .line 138
    :cond_dc
    :goto_dc
    if-eqz v3, :cond_2e

    .line 140
    :try_start_de
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_e1
    .catch Ljava/io/IOException; {:try_start_de .. :try_end_e1} :catch_e3

    goto/16 :goto_2e

    .line 141
    :catch_e3
    move-exception v1

    goto/16 :goto_2e

    .line 132
    :cond_e6
    if-eqz v1, :cond_eb

    .line 134
    :try_start_e8
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_eb
    .catch Ljava/io/IOException; {:try_start_e8 .. :try_end_eb} :catch_11f

    .line 138
    :cond_eb
    :goto_eb
    if-eqz v3, :cond_f0

    .line 140
    :try_start_ed
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_f0
    .catch Ljava/io/IOException; {:try_start_ed .. :try_end_f0} :catch_121

    .line 145
    :cond_f0
    :goto_f0
    invoke-virtual {p0}, Lcom/dropbox/android/taskqueue/ThumbnailTask;->g()Lcom/dropbox/android/taskqueue/m;

    .line 146
    sget-object v0, Lcom/dropbox/android/taskqueue/m;->b:Lcom/dropbox/android/taskqueue/m;

    goto/16 :goto_2e

    .line 129
    :catch_f7
    move-exception v0

    move-object v1, v2

    .line 130
    :goto_f9
    :try_start_f9
    sget-object v0, Lcom/dropbox/android/taskqueue/m;->c:Lcom/dropbox/android/taskqueue/m;

    invoke-virtual {p0, v0}, Lcom/dropbox/android/taskqueue/ThumbnailTask;->a(Lcom/dropbox/android/taskqueue/m;)Lcom/dropbox/android/taskqueue/m;
    :try_end_fe
    .catchall {:try_start_f9 .. :try_end_fe} :catchall_12b

    move-result-object v0

    .line 132
    if-eqz v1, :cond_104

    .line 134
    :try_start_101
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_104
    .catch Ljava/io/IOException; {:try_start_101 .. :try_end_104} :catch_125

    .line 138
    :cond_104
    :goto_104
    if-eqz v3, :cond_2e

    .line 140
    :try_start_106
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_109
    .catch Ljava/io/IOException; {:try_start_106 .. :try_end_109} :catch_10b

    goto/16 :goto_2e

    .line 141
    :catch_10b
    move-exception v1

    goto/16 :goto_2e

    .line 132
    :catchall_10e
    move-exception v0

    move-object v1, v2

    :goto_110
    if-eqz v1, :cond_115

    .line 134
    :try_start_112
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_115
    .catch Ljava/io/IOException; {:try_start_112 .. :try_end_115} :catch_127

    .line 138
    :cond_115
    :goto_115
    if-eqz v3, :cond_11a

    .line 140
    :try_start_117
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_11a
    .catch Ljava/io/IOException; {:try_start_117 .. :try_end_11a} :catch_129

    .line 141
    :cond_11a
    :goto_11a
    throw v0

    .line 135
    :catch_11b
    move-exception v1

    goto :goto_a1

    :catch_11d
    move-exception v1

    goto :goto_dc

    :catch_11f
    move-exception v0

    goto :goto_eb

    .line 141
    :catch_121
    move-exception v0

    goto :goto_f0

    .line 135
    :catch_123
    move-exception v1

    goto :goto_c1

    :catch_125
    move-exception v1

    goto :goto_104

    :catch_127
    move-exception v1

    goto :goto_115

    .line 141
    :catch_129
    move-exception v1

    goto :goto_11a

    .line 132
    :catchall_12b
    move-exception v0

    goto :goto_110

    .line 129
    :catch_12d
    move-exception v0

    goto :goto_f9

    .line 126
    :catch_12f
    move-exception v0

    move-object v1, v2

    goto/16 :goto_af

    .line 112
    :catch_133
    move-exception v2

    goto/16 :goto_7f
.end method

.method public final d()Ljava/lang/String;
    .registers 3

    .prologue
    .line 151
    iget-object v0, p0, Lcom/dropbox/android/taskqueue/ThumbnailTask;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/dropbox/android/taskqueue/ThumbnailTask;->d:Ldbxyzptlk/l/o;

    invoke-static {v0, v1}, Lcom/dropbox/android/taskqueue/ThumbnailTask;->a(Ljava/lang/String;Ldbxyzptlk/l/o;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final e()Ldbxyzptlk/i/i;
    .registers 3

    .prologue
    .line 156
    new-instance v0, Ldbxyzptlk/i/i;

    iget-object v1, p0, Lcom/dropbox/android/taskqueue/ThumbnailTask;->c:Lcom/dropbox/android/util/Z;

    invoke-direct {v0, v1}, Ldbxyzptlk/i/i;-><init>(Lcom/dropbox/android/util/Z;)V

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/dropbox/android/taskqueue/ThumbnailTask;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/dropbox/android/taskqueue/ThumbnailTask;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final i()Ldbxyzptlk/l/o;
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/dropbox/android/taskqueue/ThumbnailTask;->d:Ldbxyzptlk/l/o;

    return-object v0
.end method

.method public final j()Lcom/dropbox/android/taskqueue/p;
    .registers 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/dropbox/android/taskqueue/ThumbnailTask;->j:Lcom/dropbox/android/taskqueue/p;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ThumbnailTask: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/dropbox/android/taskqueue/ThumbnailTask;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
