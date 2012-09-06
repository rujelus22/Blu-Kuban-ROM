.class public Lcom/estrongs/android/pop/app/PopNoteEditor;
.super Lcom/estrongs/android/pop/esclasses/ESActivity;

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private a:Z

.field private b:I

.field private c:Z

.field private d:Landroid/widget/EditText;

.field private e:Ljava/lang/String;

.field private f:Landroid/view/View;

.field private g:Ljava/lang/String;

.field private h:I

.field private i:Z

.field private j:Ljava/lang/String;

.field private k:Z

.field private final l:I

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Landroid/app/ProgressDialog;

.field private r:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .registers 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;-><init>()V

    iput-boolean v1, p0, Lcom/estrongs/android/pop/app/PopNoteEditor;->a:Z

    iput-boolean v1, p0, Lcom/estrongs/android/pop/app/PopNoteEditor;->c:Z

    const-string v0, "GBK"

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopNoteEditor;->g:Ljava/lang/String;

    iput v1, p0, Lcom/estrongs/android/pop/app/PopNoteEditor;->h:I

    iput-boolean v2, p0, Lcom/estrongs/android/pop/app/PopNoteEditor;->i:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopNoteEditor;->j:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/estrongs/android/pop/app/PopNoteEditor;->k:Z

    const/high16 v0, 0x10

    iput v0, p0, Lcom/estrongs/android/pop/app/PopNoteEditor;->l:I

    iput-boolean v1, p0, Lcom/estrongs/android/pop/app/PopNoteEditor;->m:Z

    iput-boolean v1, p0, Lcom/estrongs/android/pop/app/PopNoteEditor;->n:Z

    iput-boolean v2, p0, Lcom/estrongs/android/pop/app/PopNoteEditor;->o:Z

    iput-boolean v1, p0, Lcom/estrongs/android/pop/app/PopNoteEditor;->p:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopNoteEditor;->r:Landroid/os/Handler;

    return-void
.end method

.method public static a(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;
    .registers 9

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    :try_start_7
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v1, "_display_name"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_1b

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_19} :catch_1d

    move-result-object v0

    :goto_1a
    return-object v0

    :cond_1b
    move-object v0, v6

    goto :goto_1a

    :catch_1d
    move-exception v0

    move-object v0, v6

    goto :goto_1a
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/PopNoteEditor;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopNoteEditor;->j:Ljava/lang/String;

    return-object v0
.end method

.method private a()V
    .registers 6

    invoke-static {p0}, Lcom/estrongs/android/pop/d/n;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/d/n;

    move-result-object v0

    const-wide/16 v1, 0x0

    iget-object v3, p0, Lcom/estrongs/android/pop/app/PopNoteEditor;->j:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/estrongs/android/pop/d/n;->b(JLjava/lang/String;Z)Z

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->Q()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v1

    const-string v0, "Market"

    if-eqz v1, :cond_16

    sget-object v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->c:Ljava/lang/String;

    :cond_16
    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopNoteEditor;->j:Ljava/lang/String;

    invoke-static {v1}, Lcom/estrongs/android/pop/a/d;->G(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_49

    invoke-static {p0}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/estrongs/android/pop/c;->t(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_49

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "file://"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopNoteEditor;->sendBroadcast(Landroid/content/Intent;)V

    :cond_49
    invoke-direct {p0}, Lcom/estrongs/android/pop/app/PopNoteEditor;->b()V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/PopNoteEditor;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/app/PopNoteEditor;->e:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/PopNoteEditor;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/estrongs/android/pop/app/PopNoteEditor;->a:Z

    return-void
.end method

.method static synthetic b(Lcom/estrongs/android/pop/app/PopNoteEditor;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopNoteEditor;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/estrongs/android/pop/app/PopNoteEditor;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/PopNoteEditor;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-static {p0}, Lcom/estrongs/android/pop/d/n;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/d/n;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/estrongs/android/pop/d/n;->a(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    if-nez v1, :cond_d

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopNoteEditor;->g:Ljava/lang/String;

    :cond_c
    :goto_c
    return-object v0

    :cond_d
    invoke-static {v1}, Lcom/estrongs/android/a/a;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    :try_start_11
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_14} :catch_29

    :goto_14
    if-eqz v0, :cond_1c

    invoke-static {v0}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c

    :cond_1c
    invoke-static {p0}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v0

    invoke-static {}, Lcom/estrongs/android/a/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/c;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    :catch_29
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_14
.end method

.method private b()V
    .registers 3

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->Q()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    if-eqz v0, :cond_13

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->c(Z)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopNoteEditor;->j:Ljava/lang/String;

    invoke-static {v1}, Lcom/estrongs/android/pop/a/d;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->e(Ljava/lang/String;)V

    :cond_13
    return-void
.end method

.method static synthetic b(Lcom/estrongs/android/pop/app/PopNoteEditor;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/estrongs/android/pop/app/PopNoteEditor;->m:Z

    return-void
.end method

.method private b(Z)V
    .registers 11

    const v7, 0x7f0900cc

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    const/4 v3, 0x0

    :try_start_8
    invoke-static {v0, v3}, Lcom/estrongs/android/pop/d/h;->a(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_50

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopNoteEditor;->j:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/pop/a/d;->F(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_50

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopNoteEditor;->j:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/pop/a/d;->O(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_50

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopNoteEditor;->j:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/pop/a/d;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ".bak"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/estrongs/android/pop/d/h;->c(Ljava/lang/String;)Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ".bak"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/estrongs/android/pop/d/h;->c(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_50
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopNoteEditor;->g:Ljava/lang/String;

    if-nez v0, :cond_ae

    invoke-static {}, Lcom/estrongs/android/a/a;->a()Ljava/lang/String;

    move-result-object v0

    :goto_58
    invoke-static {p0}, Lcom/estrongs/android/pop/d/n;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/d/n;

    move-result-object v3

    iget-object v5, p0, Lcom/estrongs/android/pop/app/PopNoteEditor;->j:Ljava/lang/String;

    iget-object v6, p0, Lcom/estrongs/android/pop/app/PopNoteEditor;->e:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v0, v0

    invoke-virtual {v3, v5, v0}, Lcom/estrongs/android/pop/d/n;->a(Ljava/lang/String;I)Ljava/io/OutputStream;

    move-result-object v3

    if-nez v3, :cond_b1

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
    :try_end_71
    .catchall {:try_start_8 .. :try_end_71} :catchall_185
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_71} :catch_71
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_71} :catch_115

    :catch_71
    move-exception v0

    move v0, v1

    move-object v3, v4

    :goto_74
    if-eqz v3, :cond_79

    :try_start_76
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_79
    .catch Ljava/io/IOException; {:try_start_76 .. :try_end_79} :catch_157

    :cond_79
    :goto_79
    if-eqz v0, :cond_91

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Lcom/estrongs/android/pop/app/PopNoteEditor;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/app/PopNoteEditor;->a(Ljava/lang/String;)V

    :cond_91
    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopNoteEditor;->j:Ljava/lang/String;

    invoke-static {v1}, Lcom/estrongs/android/pop/a/d;->v(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a1

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopNoteEditor;->j:Ljava/lang/String;

    invoke-static {v1}, Lcom/estrongs/android/pop/a/d;->u(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_160

    :cond_a1
    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopNoteEditor;->j:Ljava/lang/String;

    invoke-static {v4, v1}, Lcom/estrongs/android/pop/fs/FtpFileSystem;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a6
    :goto_a6
    if-eqz v0, :cond_ad

    if-eqz p1, :cond_ad

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopNoteEditor;->finish()V

    :cond_ad
    :goto_ad
    return-void

    :cond_ae
    :try_start_ae
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopNoteEditor;->g:Ljava/lang/String;

    goto :goto_58

    :cond_b1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopNoteEditor;->g:Ljava/lang/String;

    if-nez v0, :cond_108

    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v5, Ljava/io/OutputStreamWriter;

    invoke-static {}, Lcom/estrongs/android/a/a;->a()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v3, v6}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v0, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_c3
    .catchall {:try_start_ae .. :try_end_c3} :catchall_185
    .catch Ljava/io/FileNotFoundException; {:try_start_ae .. :try_end_c3} :catch_71
    .catch Ljava/io/IOException; {:try_start_ae .. :try_end_c3} :catch_115

    :goto_c3
    :try_start_c3
    iget-object v3, p0, Lcom/estrongs/android/pop/app/PopNoteEditor;->e:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V
    :try_end_cb
    .catchall {:try_start_c3 .. :try_end_cb} :catchall_1f0
    .catch Ljava/io/FileNotFoundException; {:try_start_c3 .. :try_end_cb} :catch_20a
    .catch Ljava/io/IOException; {:try_start_c3 .. :try_end_cb} :catch_200

    const/4 v3, 0x1

    :try_start_cc
    iput-boolean v3, p0, Lcom/estrongs/android/pop/app/PopNoteEditor;->p:Z
    :try_end_ce
    .catchall {:try_start_cc .. :try_end_ce} :catchall_1f5
    .catch Ljava/io/FileNotFoundException; {:try_start_cc .. :try_end_ce} :catch_20f
    .catch Ljava/io/IOException; {:try_start_cc .. :try_end_ce} :catch_205

    if-eqz v0, :cond_d3

    :try_start_d0
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_d3
    .catch Ljava/io/IOException; {:try_start_d0 .. :try_end_d3} :catch_1d8

    :cond_d3
    :goto_d3
    if-eqz v2, :cond_eb

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Lcom/estrongs/android/pop/app/PopNoteEditor;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopNoteEditor;->a(Ljava/lang/String;)V

    :cond_eb
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopNoteEditor;->j:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/pop/a/d;->v(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_fb

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopNoteEditor;->j:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/pop/a/d;->u(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e1

    :cond_fb
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopNoteEditor;->j:Ljava/lang/String;

    invoke-static {v4, v0}, Lcom/estrongs/android/pop/fs/FtpFileSystem;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_100
    :goto_100
    if-eqz v2, :cond_ad

    if-eqz p1, :cond_ad

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopNoteEditor;->finish()V

    goto :goto_ad

    :cond_108
    :try_start_108
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v5, Ljava/io/OutputStreamWriter;

    iget-object v6, p0, Lcom/estrongs/android/pop/app/PopNoteEditor;->g:Ljava/lang/String;

    invoke-direct {v5, v3, v6}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v0, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_114
    .catchall {:try_start_108 .. :try_end_114} :catchall_185
    .catch Ljava/io/FileNotFoundException; {:try_start_108 .. :try_end_114} :catch_71
    .catch Ljava/io/IOException; {:try_start_108 .. :try_end_114} :catch_115

    goto :goto_c3

    :catch_115
    move-exception v0

    move v0, v1

    move-object v3, v4

    :goto_118
    const/4 v5, 0x1

    :try_start_119
    invoke-virtual {p0, v5}, Lcom/estrongs/android/pop/app/PopNoteEditor;->showDialog(I)V
    :try_end_11c
    .catchall {:try_start_119 .. :try_end_11c} :catchall_1fa

    if-eqz v3, :cond_121

    :try_start_11e
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_121
    .catch Ljava/io/IOException; {:try_start_11e .. :try_end_121} :catch_16f

    :cond_121
    :goto_121
    if-eqz v0, :cond_139

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Lcom/estrongs/android/pop/app/PopNoteEditor;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/app/PopNoteEditor;->a(Ljava/lang/String;)V

    :cond_139
    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopNoteEditor;->j:Ljava/lang/String;

    invoke-static {v1}, Lcom/estrongs/android/pop/a/d;->v(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_149

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopNoteEditor;->j:Ljava/lang/String;

    invoke-static {v1}, Lcom/estrongs/android/pop/a/d;->u(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_177

    :cond_149
    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopNoteEditor;->j:Ljava/lang/String;

    invoke-static {v4, v1}, Lcom/estrongs/android/pop/fs/FtpFileSystem;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_14e
    :goto_14e
    if-eqz v0, :cond_ad

    if-eqz p1, :cond_ad

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopNoteEditor;->finish()V

    goto/16 :goto_ad

    :catch_157
    move-exception v0

    iput-boolean v1, p0, Lcom/estrongs/android/pop/app/PopNoteEditor;->p:Z

    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/app/PopNoteEditor;->showDialog(I)V

    move v0, v1

    goto/16 :goto_79

    :cond_160
    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopNoteEditor;->j:Ljava/lang/String;

    invoke-static {v1}, Lcom/estrongs/android/pop/a/d;->D(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a6

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopNoteEditor;->j:Ljava/lang/String;

    invoke-static {v4, v1}, Lcom/estrongs/android/pop/fs/a;->b(Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_a6

    :catch_16f
    move-exception v0

    iput-boolean v1, p0, Lcom/estrongs/android/pop/app/PopNoteEditor;->p:Z

    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/app/PopNoteEditor;->showDialog(I)V

    move v0, v1

    goto :goto_121

    :cond_177
    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopNoteEditor;->j:Ljava/lang/String;

    invoke-static {v1}, Lcom/estrongs/android/pop/a/d;->D(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14e

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopNoteEditor;->j:Ljava/lang/String;

    invoke-static {v4, v1}, Lcom/estrongs/android/pop/fs/a;->b(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_14e

    :catchall_185
    move-exception v0

    move v3, v1

    move-object v5, v4

    :goto_188
    if-eqz v5, :cond_18d

    :try_start_18a
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->close()V
    :try_end_18d
    .catch Ljava/io/IOException; {:try_start_18a .. :try_end_18d} :catch_1c2

    :cond_18d
    :goto_18d
    if-eqz v3, :cond_1a5

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Lcom/estrongs/android/pop/app/PopNoteEditor;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/app/PopNoteEditor;->a(Ljava/lang/String;)V

    :cond_1a5
    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopNoteEditor;->j:Ljava/lang/String;

    invoke-static {v1}, Lcom/estrongs/android/pop/a/d;->v(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1b5

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopNoteEditor;->j:Ljava/lang/String;

    invoke-static {v1}, Lcom/estrongs/android/pop/a/d;->u(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1ca

    :cond_1b5
    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopNoteEditor;->j:Ljava/lang/String;

    invoke-static {v4, v1}, Lcom/estrongs/android/pop/fs/FtpFileSystem;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1ba
    :goto_1ba
    if-eqz v3, :cond_1c1

    if-eqz p1, :cond_1c1

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopNoteEditor;->finish()V

    :cond_1c1
    throw v0

    :catch_1c2
    move-exception v3

    iput-boolean v1, p0, Lcom/estrongs/android/pop/app/PopNoteEditor;->p:Z

    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/app/PopNoteEditor;->showDialog(I)V

    move v3, v1

    goto :goto_18d

    :cond_1ca
    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopNoteEditor;->j:Ljava/lang/String;

    invoke-static {v1}, Lcom/estrongs/android/pop/a/d;->D(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1ba

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopNoteEditor;->j:Ljava/lang/String;

    invoke-static {v4, v1}, Lcom/estrongs/android/pop/fs/a;->b(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1ba

    :catch_1d8
    move-exception v0

    iput-boolean v1, p0, Lcom/estrongs/android/pop/app/PopNoteEditor;->p:Z

    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/app/PopNoteEditor;->showDialog(I)V

    move v2, v1

    goto/16 :goto_d3

    :cond_1e1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopNoteEditor;->j:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/pop/a/d;->D(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_100

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopNoteEditor;->j:Ljava/lang/String;

    invoke-static {v4, v0}, Lcom/estrongs/android/pop/fs/a;->b(Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_100

    :catchall_1f0
    move-exception v3

    move-object v5, v0

    move-object v0, v3

    move v3, v1

    goto :goto_188

    :catchall_1f5
    move-exception v3

    move-object v5, v0

    move-object v0, v3

    move v3, v2

    goto :goto_188

    :catchall_1fa
    move-exception v5

    move-object v8, v5

    move-object v5, v3

    move v3, v0

    move-object v0, v8

    goto :goto_188

    :catch_200
    move-exception v3

    move-object v3, v0

    move v0, v1

    goto/16 :goto_118

    :catch_205
    move-exception v3

    move-object v3, v0

    move v0, v2

    goto/16 :goto_118

    :catch_20a
    move-exception v3

    move-object v3, v0

    move v0, v1

    goto/16 :goto_74

    :catch_20f
    move-exception v3

    move-object v3, v0

    move v0, v2

    goto/16 :goto_74
.end method

.method private c()V
    .registers 3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopNoteEditor;->r:Landroid/os/Handler;

    new-instance v1, Lcom/estrongs/android/pop/app/ct;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/ct;-><init>(Lcom/estrongs/android/pop/app/PopNoteEditor;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic c(Lcom/estrongs/android/pop/app/PopNoteEditor;)V
    .registers 1

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/PopNoteEditor;->c()V

    return-void
.end method

.method static synthetic c(Lcom/estrongs/android/pop/app/PopNoteEditor;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/app/PopNoteEditor;->g:Ljava/lang/String;

    return-void
.end method

.method static synthetic c(Lcom/estrongs/android/pop/app/PopNoteEditor;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/estrongs/android/pop/app/PopNoteEditor;->n:Z

    return-void
.end method

.method private final d()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopNoteEditor;->setResult(I)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopNoteEditor;->finish()V

    return-void
.end method

.method static synthetic d(Lcom/estrongs/android/pop/app/PopNoteEditor;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/estrongs/android/pop/app/PopNoteEditor;->i:Z

    return-void
.end method

.method static synthetic d(Lcom/estrongs/android/pop/app/PopNoteEditor;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/PopNoteEditor;->k:Z

    return v0
.end method

.method private final e()V
    .registers 2

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopNoteEditor;->showDialog(I)V

    return-void
.end method

.method static synthetic e(Lcom/estrongs/android/pop/app/PopNoteEditor;)V
    .registers 1

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/PopNoteEditor;->b()V

    return-void
.end method

.method static synthetic e(Lcom/estrongs/android/pop/app/PopNoteEditor;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/estrongs/android/pop/app/PopNoteEditor;->o:Z

    return-void
.end method

.method static synthetic f(Lcom/estrongs/android/pop/app/PopNoteEditor;)V
    .registers 1

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/PopNoteEditor;->a()V

    return-void
.end method

.method private f()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method static synthetic g(Lcom/estrongs/android/pop/app/PopNoteEditor;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopNoteEditor;->f:Landroid/view/View;

    return-object v0
.end method

.method static synthetic h(Lcom/estrongs/android/pop/app/PopNoteEditor;)Landroid/widget/EditText;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopNoteEditor;->d:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic i(Lcom/estrongs/android/pop/app/PopNoteEditor;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopNoteEditor;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic j(Lcom/estrongs/android/pop/app/PopNoteEditor;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/PopNoteEditor;->i:Z

    return v0
.end method

.method static synthetic k(Lcom/estrongs/android/pop/app/PopNoteEditor;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/PopNoteEditor;->o:Z

    return v0
.end method


# virtual methods
.method public a(Landroid/os/Bundle;Z)V
    .registers 5

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopNoteEditor;->f:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Lcom/estrongs/android/pop/app/cs;

    invoke-direct {v0, p0, p1, p2}, Lcom/estrongs/android/pop/app/cs;-><init>(Lcom/estrongs/android/pop/app/PopNoteEditor;Landroid/os/Bundle;Z)V

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public a(Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/PopNoteEditor;->b(Z)V

    return-void
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method public finish()V
    .registers 1

    invoke-super {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6

    const/16 v1, 0x400

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onCreate(Landroid/os/Bundle;)V

    iput-boolean v3, p0, Lcom/estrongs/android/pop/app/PopNoteEditor;->a:Z

    invoke-static {p0}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/c;->H()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopNoteEditor;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    const v0, 0x103000a

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopNoteEditor;->setTheme(I)V

    :goto_20
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopNoteEditor;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_33

    :cond_2a
    :goto_2a
    return-void

    :cond_2b
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopNoteEditor;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_20

    :cond_33
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopNoteEditor;->j:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopNoteEditor;->j:Ljava/lang/String;

    if-eqz v0, :cond_2a

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopNoteEditor;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.EDIT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_94

    iput v3, p0, Lcom/estrongs/android/pop/app/PopNoteEditor;->b:I

    :goto_4f
    const v0, 0x7f030036

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopNoteEditor;->setContentView(I)V

    const v0, 0x7f070192

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopNoteEditor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopNoteEditor;->d:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopNoteEditor;->d:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVerticalFadingEdgeEnabled(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopNoteEditor;->d:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setScrollBarStyle(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopNoteEditor;->d:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const v0, 0x7f070190

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopNoteEditor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopNoteEditor;->f:Landroid/view/View;

    invoke-virtual {p0, p1, v2}, Lcom/estrongs/android/pop/app/PopNoteEditor;->a(Landroid/os/Bundle;Z)V

    new-array v0, v2, [I

    const v1, 0x7f070191

    aput v1, v0, v3

    new-array v1, v2, [I

    const v2, 0x7f0900b1

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/pop/app/PopNoteEditor;->a([I[I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopNoteEditor;->d:Landroid/widget/EditText;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    goto :goto_2a

    :cond_94
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9f

    iput v3, p0, Lcom/estrongs/android/pop/app/PopNoteEditor;->b:I

    goto :goto_4f

    :cond_9f
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopNoteEditor;->finish()V

    goto :goto_2a
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 9

    const v6, 0x7f09007f

    const v5, 0x7f09005f

    const/4 v2, 0x1

    const v4, 0x7f09005e

    const v3, 0x1080027

    packed-switch p1, :pswitch_data_1a4

    const/4 v0, 0x0

    :goto_11
    return-object v0

    :pswitch_12
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090081

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090084

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/app/cv;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/cv;-><init>(Lcom/estrongs/android/pop/app/PopNoteEditor;)V

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090060

    new-instance v2, Lcom/estrongs/android/pop/app/cw;

    invoke-direct {v2, p0}, Lcom/estrongs/android/pop/app/cw;-><init>(Lcom/estrongs/android/pop/app/PopNoteEditor;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_11

    :pswitch_43
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x108001d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09007e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f090086

    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/app/PopNoteEditor;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/PopNoteEditor;->j:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/pop/a/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/app/cx;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/cx;-><init>(Lcom/estrongs/android/pop/app/PopNoteEditor;)V

    invoke-virtual {v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090085

    new-instance v2, Lcom/estrongs/android/pop/app/cy;

    invoke-direct {v2, p0}, Lcom/estrongs/android/pop/app/cy;-><init>(Lcom/estrongs/android/pop/app/PopNoteEditor;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_11

    :pswitch_9d
    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/PopNoteEditor;->m:Z

    if-eqz v0, :cond_cf

    const v0, 0x7f090082

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopNoteEditor;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_ac
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090081

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/app/cz;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/cz;-><init>(Lcom/estrongs/android/pop/app/PopNoteEditor;)V

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_11

    :cond_cf
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f090083

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/app/PopNoteEditor;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopNoteEditor;->j:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/pop/a/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_ac

    :pswitch_f8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f090080

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/app/PopNoteEditor;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopNoteEditor;->j:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/pop/a/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopNoteEditor;->j:Ljava/lang/String;

    if-eqz v1, :cond_160

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopNoteEditor;->j:Ljava/lang/String;

    const-string v2, "sdcard/.estrongs/tmp/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_160

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/app/da;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/da;-><init>(Lcom/estrongs/android/pop/app/PopNoteEditor;)V

    invoke-virtual {v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090085

    new-instance v2, Lcom/estrongs/android/pop/app/db;

    invoke-direct {v2, p0}, Lcom/estrongs/android/pop/app/db;-><init>(Lcom/estrongs/android/pop/app/PopNoteEditor;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_11

    :cond_160
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0901e3

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/app/dc;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/dc;-><init>(Lcom/estrongs/android/pop/app/PopNoteEditor;)V

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_11

    :pswitch_183
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopNoteEditor;->q:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopNoteEditor;->q:Landroid/app/ProgressDialog;

    const v1, 0x7f0900b1

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/app/PopNoteEditor;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopNoteEditor;->q:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopNoteEditor;->q:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopNoteEditor;->q:Landroid/app/ProgressDialog;

    goto/16 :goto_11

    :pswitch_data_1a4
    .packed-switch 0x1
        :pswitch_12
        :pswitch_9d
        :pswitch_43
        :pswitch_f8
        :pswitch_183
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 12

    const/16 v4, 0x64

    const/4 v9, 0x1

    const/4 v5, 0x0

    const/16 v3, 0x30

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopNoteEditor;->j:Ljava/lang/String;

    if-eqz v0, :cond_4f

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopNoteEditor;->j:Ljava/lang/String;

    const-string v1, "sdcard/.estrongs/tmp/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4f

    iget v0, p0, Lcom/estrongs/android/pop/app/PopNoteEditor;->b:I

    if-nez v0, :cond_8a

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/PopNoteEditor;->a:Z

    if-nez v0, :cond_33

    const v0, 0x7f09007c

    invoke-interface {p1, v2, v9, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x73

    invoke-interface {v0, v3, v1}, Landroid/view/MenuItem;->setShortcut(CC)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x108004e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_33
    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/PopNoteEditor;->c:Z

    if-nez v0, :cond_4f

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/PopNoteEditor;->a:Z

    if-nez v0, :cond_4f

    const/4 v0, 0x3

    const v1, 0x7f090009

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x31

    invoke-interface {v0, v1, v4}, Landroid/view/MenuItem;->setShortcut(CC)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02008c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_4f
    :goto_4f
    const/4 v0, 0x4

    const v1, 0x7f090100

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x73

    invoke-interface {v0, v3, v1}, Landroid/view/MenuItem;->setShortcut(CC)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02009e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/PopNoteEditor;->c:Z

    if-nez v0, :cond_89

    new-instance v6, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopNoteEditor;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v6, v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v0, "android.intent.category.ALTERNATIVE"

    invoke-virtual {v6, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x4

    new-instance v4, Landroid/content/ComponentName;

    const-class v0, Lcom/estrongs/android/pop/app/PopNoteEditor;

    invoke-direct {v4, p0, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object v0, p1

    move v3, v2

    move v7, v2

    move-object v8, v5

    invoke-interface/range {v0 .. v8}, Landroid/view/Menu;->addIntentOptions(IIILandroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I[Landroid/view/MenuItem;)I

    :cond_89
    return v9

    :cond_8a
    const/4 v0, 0x2

    const v1, 0x7f09007d

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3, v4}, Landroid/view/MenuItem;->setShortcut(CC)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02008c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_4f
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 7

    const/4 v3, 0x4

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-ne p1, v3, :cond_15

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopNoteEditor;->j:Ljava/lang/String;

    if-eqz v0, :cond_15

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/PopNoteEditor;->c:Z

    if-eqz v0, :cond_16

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/app/PopNoteEditor;->setResult(I)V

    iput-boolean v2, p0, Lcom/estrongs/android/pop/app/PopNoteEditor;->k:Z

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopNoteEditor;->finish()V

    :cond_15
    :goto_15
    return v1

    :cond_16
    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/PopNoteEditor;->n:Z

    if-eqz v0, :cond_30

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/PopNoteEditor;->a:Z

    if-nez v0, :cond_30

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopNoteEditor;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopNoteEditor;->e:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/estrongs/android/pop/app/PopNoteEditor;->k:Z

    invoke-virtual {p0, v3}, Lcom/estrongs/android/pop/app/PopNoteEditor;->showDialog(I)V

    goto :goto_15

    :cond_30
    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/app/PopNoteEditor;->setResult(I)V

    iput-boolean v2, p0, Lcom/estrongs/android/pop/app/PopNoteEditor;->k:Z

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopNoteEditor;->finish()V

    goto :goto_15
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 5

    const/4 v1, 0x0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_40

    :cond_8
    :goto_8
    invoke-super {p0, p1}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :pswitch_d
    invoke-direct {p0}, Lcom/estrongs/android/pop/app/PopNoteEditor;->e()V

    goto :goto_8

    :pswitch_11
    invoke-direct {p0}, Lcom/estrongs/android/pop/app/PopNoteEditor;->d()V

    goto :goto_8

    :pswitch_15
    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/PopNoteEditor;->n:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopNoteEditor;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopNoteEditor;->e:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/app/PopNoteEditor;->a(Z)V

    iput-boolean v1, p0, Lcom/estrongs/android/pop/app/PopNoteEditor;->n:Z

    goto :goto_8

    :pswitch_2b
    new-instance v0, Lcom/estrongs/android/util/a;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopNoteEditor;->g:Ljava/lang/String;

    new-instance v2, Lcom/estrongs/android/pop/app/cu;

    invoke-direct {v2, p0}, Lcom/estrongs/android/pop/app/cu;-><init>(Lcom/estrongs/android/pop/app/PopNoteEditor;)V

    invoke-direct {v0, p0, v1, v2}, Lcom/estrongs/android/util/a;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/estrongs/android/util/e;)V

    invoke-virtual {v0}, Lcom/estrongs/android/util/a;->a()V

    goto :goto_8

    :pswitch_3b
    invoke-direct {p0}, Lcom/estrongs/android/pop/app/PopNoteEditor;->f()Z

    goto :goto_8

    nop

    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_15
        :pswitch_11
        :pswitch_d
        :pswitch_2b
        :pswitch_3b
    .end packed-switch
.end method

.method protected onPause()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopNoteEditor;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getScrollY()I

    move-result v0

    iput v0, p0, Lcom/estrongs/android/pop/app/PopNoteEditor;->h:I

    invoke-super {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onPause()V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopNoteEditor;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/PopNoteEditor;->c:Z

    if-eqz v0, :cond_1a

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/app/PopNoteEditor;->setResult(I)V

    :cond_19
    :goto_19
    return-void

    :cond_1a
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopNoteEditor;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_24

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/PopNoteEditor;->c:Z

    if-eqz v0, :cond_19

    :cond_24
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopNoteEditor;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_19

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/PopNoteEditor;->c:Z

    if-nez v0, :cond_19

    iput-boolean v1, p0, Lcom/estrongs/android/pop/app/PopNoteEditor;->k:Z

    goto :goto_19
.end method

.method protected onResume()V
    .registers 4

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onResume()V

    iget v0, p0, Lcom/estrongs/android/pop/app/PopNoteEditor;->b:I

    if-nez v0, :cond_28

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopNoteEditor;->j:Ljava/lang/String;

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_43

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/PopNoteEditor;->a:Z

    :goto_15
    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/PopNoteEditor;->a:Z

    if-nez v0, :cond_46

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopNoteEditor;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/a/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_23
    if-eqz v0, :cond_28

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopNoteEditor;->setTitle(Ljava/lang/CharSequence;)V

    :cond_28
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopNoteEditor;->d:Landroid/widget/EditText;

    if-nez v0, :cond_37

    const v0, 0x7f070192

    :try_start_2f
    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopNoteEditor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopNoteEditor;->d:Landroid/widget/EditText;
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_37} :catch_57

    :cond_37
    :goto_37
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopNoteEditor;->d:Landroid/widget/EditText;

    if-eqz v0, :cond_42

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopNoteEditor;->d:Landroid/widget/EditText;

    iget v1, p0, Lcom/estrongs/android/pop/app/PopNoteEditor;->h:I

    invoke-virtual {v0, v2, v1}, Landroid/widget/EditText;->scrollTo(II)V

    :cond_42
    return-void

    :cond_43
    iput-boolean v2, p0, Lcom/estrongs/android/pop/app/PopNoteEditor;->a:Z

    goto :goto_15

    :cond_46
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopNoteEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopNoteEditor;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/PopNoteEditor;->a(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    goto :goto_23

    :catch_57
    move-exception v0

    goto :goto_37
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopNoteEditor;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopNoteEditor;->e:Ljava/lang/String;

    const-string v0, "origContent"

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopNoteEditor;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_14
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_13} :catch_19

    :goto_13
    return-void

    :catch_14
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_13

    :catch_19
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_13
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 6

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/PopNoteEditor;->n:Z

    return-void
.end method
