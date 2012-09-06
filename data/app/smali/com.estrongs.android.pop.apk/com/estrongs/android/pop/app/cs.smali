.class Lcom/estrongs/android/pop/app/cs;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/PopNoteEditor;

.field private final synthetic b:Landroid/os/Bundle;

.field private final synthetic c:Z


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/PopNoteEditor;Landroid/os/Bundle;Z)V
    .registers 4

    iput-object p1, p0, Lcom/estrongs/android/pop/app/cs;->a:Lcom/estrongs/android/pop/app/PopNoteEditor;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/cs;->b:Landroid/os/Bundle;

    iput-boolean p3, p0, Lcom/estrongs/android/pop/app/cs;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    const/4 v0, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/cs;->b:Landroid/os/Bundle;

    if-eqz v1, :cond_1a

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cs;->a:Lcom/estrongs/android/pop/app/PopNoteEditor;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/cs;->b:Landroid/os/Bundle;

    const-string v2, "origContent"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/PopNoteEditor;->a(Lcom/estrongs/android/pop/app/PopNoteEditor;Ljava/lang/String;)V

    :cond_14
    :goto_14
    iget-object v0, p0, Lcom/estrongs/android/pop/app/cs;->a:Lcom/estrongs/android/pop/app/PopNoteEditor;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopNoteEditor;->c(Lcom/estrongs/android/pop/app/PopNoteEditor;)V

    return-void

    :cond_1a
    iget-object v1, p0, Lcom/estrongs/android/pop/app/cs;->a:Lcom/estrongs/android/pop/app/PopNoteEditor;

    invoke-static {v1, v2}, Lcom/estrongs/android/pop/app/PopNoteEditor;->a(Lcom/estrongs/android/pop/app/PopNoteEditor;Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    :try_start_24
    iget-boolean v1, p0, Lcom/estrongs/android/pop/app/cs;->c:Z

    if-eqz v1, :cond_39

    iget-object v1, p0, Lcom/estrongs/android/pop/app/cs;->a:Lcom/estrongs/android/pop/app/PopNoteEditor;

    iget-object v4, p0, Lcom/estrongs/android/pop/app/cs;->a:Lcom/estrongs/android/pop/app/PopNoteEditor;

    iget-object v6, p0, Lcom/estrongs/android/pop/app/cs;->a:Lcom/estrongs/android/pop/app/PopNoteEditor;

    invoke-static {v6}, Lcom/estrongs/android/pop/app/PopNoteEditor;->a(Lcom/estrongs/android/pop/app/PopNoteEditor;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/estrongs/android/pop/app/PopNoteEditor;->b(Lcom/estrongs/android/pop/app/PopNoteEditor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/estrongs/android/pop/app/PopNoteEditor;->c(Lcom/estrongs/android/pop/app/PopNoteEditor;Ljava/lang/String;)V

    :cond_39
    iget-object v1, p0, Lcom/estrongs/android/pop/app/cs;->a:Lcom/estrongs/android/pop/app/PopNoteEditor;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/PopNoteEditor;->a(Lcom/estrongs/android/pop/app/PopNoteEditor;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "content://"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4d

    iget-object v1, p0, Lcom/estrongs/android/pop/app/cs;->a:Lcom/estrongs/android/pop/app/PopNoteEditor;

    const/4 v4, 0x1

    invoke-static {v1, v4}, Lcom/estrongs/android/pop/app/PopNoteEditor;->a(Lcom/estrongs/android/pop/app/PopNoteEditor;Z)V

    :cond_4d
    iget-object v1, p0, Lcom/estrongs/android/pop/app/cs;->a:Lcom/estrongs/android/pop/app/PopNoteEditor;

    invoke-static {v1}, Lcom/estrongs/android/pop/d/n;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/d/n;

    move-result-object v1

    iget-object v4, p0, Lcom/estrongs/android/pop/app/cs;->a:Lcom/estrongs/android/pop/app/PopNoteEditor;

    invoke-static {v4}, Lcom/estrongs/android/pop/app/PopNoteEditor;->a(Lcom/estrongs/android/pop/app/PopNoteEditor;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/estrongs/android/pop/d/n;->a(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    if-nez v4, :cond_f5

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
    :try_end_65
    .catchall {:try_start_24 .. :try_end_65} :catchall_1e0
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_65} :catch_65

    :catch_65
    move-exception v0

    move-object v1, v2

    :goto_67
    :try_start_67
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/estrongs/android/pop/view/a/m;->a(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_75

    invoke-static {v0}, Lcom/estrongs/android/pop/view/a/m;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    :cond_75
    invoke-static {v4}, Lcom/estrongs/android/pop/view/a/m;->a(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1e6

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_83
    sget-object v4, Lcom/estrongs/android/pop/view/FileExplorerActivity;->c:Ljava/lang/String;

    const-string v6, "PHILIPS"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_96

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cs;->a:Lcom/estrongs/android/pop/app/PopNoteEditor;

    const v4, 0x7f0901e4

    invoke-virtual {v0, v4}, Lcom/estrongs/android/pop/app/PopNoteEditor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_96
    iget-object v4, p0, Lcom/estrongs/android/pop/app/cs;->a:Lcom/estrongs/android/pop/app/PopNoteEditor;

    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/estrongs/android/pop/app/cs;->a:Lcom/estrongs/android/pop/app/PopNoteEditor;

    const v8, 0x7f090146

    invoke-virtual {v7, v8}, Lcom/estrongs/android/pop/app/PopNoteEditor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ")"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/estrongs/android/pop/app/PopNoteEditor;->a(Lcom/estrongs/android/pop/app/PopNoteEditor;Ljava/lang/String;)V
    :try_end_c1
    .catchall {:try_start_67 .. :try_end_c1} :catchall_16b

    if-eqz v1, :cond_c6

    :try_start_c3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_c6
    .catch Ljava/io/IOException; {:try_start_c3 .. :try_end_c6} :catch_1d8

    :cond_c6
    :goto_c6
    iget-object v0, p0, Lcom/estrongs/android/pop/app/cs;->a:Lcom/estrongs/android/pop/app/PopNoteEditor;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopNoteEditor;->a(Lcom/estrongs/android/pop/app/PopNoteEditor;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/a/d;->v(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_de

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cs;->a:Lcom/estrongs/android/pop/app/PopNoteEditor;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopNoteEditor;->a(Lcom/estrongs/android/pop/app/PopNoteEditor;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/a/d;->u(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_193

    :cond_de
    iget-object v0, p0, Lcom/estrongs/android/pop/app/cs;->a:Lcom/estrongs/android/pop/app/PopNoteEditor;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopNoteEditor;->a(Lcom/estrongs/android/pop/app/PopNoteEditor;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/estrongs/android/pop/fs/FtpFileSystem;->b(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v3

    :cond_e8
    :goto_e8
    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cs;->a:Lcom/estrongs/android/pop/app/PopNoteEditor;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/PopNoteEditor;->a(Lcom/estrongs/android/pop/app/PopNoteEditor;Ljava/lang/String;)V

    goto/16 :goto_14

    :cond_f5
    :try_start_f5
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    iget-object v7, p0, Lcom/estrongs/android/pop/app/cs;->a:Lcom/estrongs/android/pop/app/PopNoteEditor;

    invoke-static {v7}, Lcom/estrongs/android/pop/app/PopNoteEditor;->b(Lcom/estrongs/android/pop/app/PopNoteEditor;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v4, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_105
    .catchall {:try_start_f5 .. :try_end_105} :catchall_1e0
    .catch Ljava/lang/Throwable; {:try_start_f5 .. :try_end_105} :catch_65

    move v4, v0

    :goto_106
    :try_start_106
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_109
    .catchall {:try_start_106 .. :try_end_109} :catchall_16b
    .catch Ljava/lang/Throwable; {:try_start_106 .. :try_end_109} :catch_151

    move-result-object v6

    if-nez v6, :cond_133

    if-eqz v1, :cond_111

    :try_start_10e
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_111
    .catch Ljava/io/IOException; {:try_start_10e .. :try_end_111} :catch_1dd

    :cond_111
    :goto_111
    iget-object v1, p0, Lcom/estrongs/android/pop/app/cs;->a:Lcom/estrongs/android/pop/app/PopNoteEditor;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/PopNoteEditor;->a(Lcom/estrongs/android/pop/app/PopNoteEditor;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/pop/a/d;->v(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_129

    iget-object v1, p0, Lcom/estrongs/android/pop/app/cs;->a:Lcom/estrongs/android/pop/app/PopNoteEditor;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/PopNoteEditor;->a(Lcom/estrongs/android/pop/app/PopNoteEditor;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/pop/a/d;->u(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c1

    :cond_129
    iget-object v1, p0, Lcom/estrongs/android/pop/app/cs;->a:Lcom/estrongs/android/pop/app/PopNoteEditor;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/PopNoteEditor;->a(Lcom/estrongs/android/pop/app/PopNoteEditor;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/estrongs/android/pop/fs/FtpFileSystem;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e8

    :cond_133
    :try_start_133
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v4, v7

    const/high16 v7, 0x10

    if-le v4, v7, :cond_154

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cs;->a:Lcom/estrongs/android/pop/app/PopNoteEditor;

    const/4 v4, 0x1

    invoke-static {v0, v4}, Lcom/estrongs/android/pop/app/PopNoteEditor;->b(Lcom/estrongs/android/pop/app/PopNoteEditor;Z)V

    new-instance v0, Ljava/io/IOException;

    iget-object v4, p0, Lcom/estrongs/android/pop/app/cs;->a:Lcom/estrongs/android/pop/app/PopNoteEditor;

    const v6, 0x7f090082

    invoke-virtual {v4, v6}, Lcom/estrongs/android/pop/app/PopNoteEditor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_151
    move-exception v0

    goto/16 :goto_67

    :cond_154
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "\n"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_16a
    .catchall {:try_start_133 .. :try_end_16a} :catchall_16b
    .catch Ljava/lang/Throwable; {:try_start_133 .. :try_end_16a} :catch_151

    goto :goto_106

    :catchall_16b
    move-exception v0

    :goto_16c
    if-eqz v1, :cond_171

    :try_start_16e
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_171
    .catch Ljava/io/IOException; {:try_start_16e .. :try_end_171} :catch_1db

    :cond_171
    :goto_171
    iget-object v1, p0, Lcom/estrongs/android/pop/app/cs;->a:Lcom/estrongs/android/pop/app/PopNoteEditor;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/PopNoteEditor;->a(Lcom/estrongs/android/pop/app/PopNoteEditor;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/pop/a/d;->v(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_189

    iget-object v1, p0, Lcom/estrongs/android/pop/app/cs;->a:Lcom/estrongs/android/pop/app/PopNoteEditor;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/PopNoteEditor;->a(Lcom/estrongs/android/pop/app/PopNoteEditor;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/pop/a/d;->u(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1ab

    :cond_189
    iget-object v1, p0, Lcom/estrongs/android/pop/app/cs;->a:Lcom/estrongs/android/pop/app/PopNoteEditor;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/PopNoteEditor;->a(Lcom/estrongs/android/pop/app/PopNoteEditor;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/estrongs/android/pop/fs/FtpFileSystem;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_192
    :goto_192
    throw v0

    :cond_193
    iget-object v0, p0, Lcom/estrongs/android/pop/app/cs;->a:Lcom/estrongs/android/pop/app/PopNoteEditor;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopNoteEditor;->a(Lcom/estrongs/android/pop/app/PopNoteEditor;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/a/d;->D(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cs;->a:Lcom/estrongs/android/pop/app/PopNoteEditor;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopNoteEditor;->a(Lcom/estrongs/android/pop/app/PopNoteEditor;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/estrongs/android/pop/fs/a;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move v0, v3

    goto/16 :goto_e8

    :cond_1ab
    iget-object v1, p0, Lcom/estrongs/android/pop/app/cs;->a:Lcom/estrongs/android/pop/app/PopNoteEditor;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/PopNoteEditor;->a(Lcom/estrongs/android/pop/app/PopNoteEditor;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/pop/a/d;->D(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_192

    iget-object v1, p0, Lcom/estrongs/android/pop/app/cs;->a:Lcom/estrongs/android/pop/app/PopNoteEditor;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/PopNoteEditor;->a(Lcom/estrongs/android/pop/app/PopNoteEditor;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/estrongs/android/pop/fs/a;->b(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_192

    :cond_1c1
    iget-object v1, p0, Lcom/estrongs/android/pop/app/cs;->a:Lcom/estrongs/android/pop/app/PopNoteEditor;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/PopNoteEditor;->a(Lcom/estrongs/android/pop/app/PopNoteEditor;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/pop/a/d;->D(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e8

    iget-object v1, p0, Lcom/estrongs/android/pop/app/cs;->a:Lcom/estrongs/android/pop/app/PopNoteEditor;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/PopNoteEditor;->a(Lcom/estrongs/android/pop/app/PopNoteEditor;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/estrongs/android/pop/fs/a;->b(Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_e8

    :catch_1d8
    move-exception v0

    goto/16 :goto_c6

    :catch_1db
    move-exception v1

    goto :goto_171

    :catch_1dd
    move-exception v1

    goto/16 :goto_111

    :catchall_1e0
    move-exception v0

    move-object v1, v2

    goto :goto_16c

    :cond_1e3
    move v0, v3

    goto/16 :goto_e8

    :cond_1e6
    move-object v0, v4

    goto/16 :goto_83
.end method
