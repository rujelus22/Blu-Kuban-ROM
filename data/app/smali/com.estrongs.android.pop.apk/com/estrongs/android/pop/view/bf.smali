.class Lcom/estrongs/android/pop/view/bf;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/bd;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/bd;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/estrongs/android/pop/view/bf;->a:Lcom/estrongs/android/pop/view/bd;

    iput-object p2, p0, Lcom/estrongs/android/pop/view/bf;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 11

    const/4 v8, 0x1

    const/4 v7, 0x0

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/bf;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/estrongs/android/pop/view/bf;->b:Ljava/lang/String;

    invoke-static {v2}, Lcom/estrongs/android/pop/a/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "checksum"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v3, ""

    const/4 v1, 0x0

    :try_start_2f
    new-instance v2, Ljava/io/PrintWriter;

    new-instance v5, Ljava/io/FileOutputStream;

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v5}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_3e
    .catchall {:try_start_2f .. :try_end_3e} :catchall_10c
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_3e} :catch_101

    :try_start_3e
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/bf;->a:Lcom/estrongs/android/pop/view/bd;

    invoke-static {v1}, Lcom/estrongs/android/pop/view/bd;->a(Lcom/estrongs/android/pop/view/bd;)Landroid/app/Activity;

    move-result-object v1

    const v5, 0x7f090073

    invoke-virtual {v1, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/view/bf;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/bf;->a:Lcom/estrongs/android/pop/view/bd;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/bd;->m:Ljava/lang/String;

    if-eqz v0, :cond_11a

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MD5: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/view/bf;->a:Lcom/estrongs/android/pop/view/bd;

    iget-object v1, v1, Lcom/estrongs/android/pop/view/bd;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "MD5,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_8f
    .catchall {:try_start_3e .. :try_end_8f} :catchall_112
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_8f} :catch_114

    move-result-object v0

    :goto_90
    :try_start_90
    iget-object v1, p0, Lcom/estrongs/android/pop/view/bf;->a:Lcom/estrongs/android/pop/view/bd;

    iget-object v1, v1, Lcom/estrongs/android/pop/view/bd;->n:Ljava/lang/String;

    if-eqz v1, :cond_bf

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "SHA-1: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/estrongs/android/pop/view/bf;->a:Lcom/estrongs/android/pop/view/bd;

    iget-object v3, v3, Lcom/estrongs/android/pop/view/bd;->n:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "SHA-1,"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_be
    .catchall {:try_start_90 .. :try_end_be} :catchall_112
    .catch Ljava/lang/Exception; {:try_start_90 .. :try_end_be} :catch_118

    move-result-object v0

    :cond_bf
    invoke-static {v2}, Lcom/estrongs/android/util/a/b;->a(Ljava/io/Closeable;)V

    :goto_c2
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_d4
    iget-object v1, p0, Lcom/estrongs/android/pop/view/bf;->a:Lcom/estrongs/android/pop/view/bd;

    invoke-static {v1}, Lcom/estrongs/android/pop/view/bd;->a(Lcom/estrongs/android/pop/view/bd;)Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f090217

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/view/bf;->a:Lcom/estrongs/android/pop/view/bd;

    invoke-static {v2}, Lcom/estrongs/android/pop/view/bd;->a(Lcom/estrongs/android/pop/view/bd;)Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v7

    aput-object v4, v3, v8

    invoke-static {v1, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->Q()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->T()V

    return-void

    :catch_101
    move-exception v0

    move-object v2, v1

    move-object v1, v0

    move-object v0, v3

    :goto_105
    :try_start_105
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_108
    .catchall {:try_start_105 .. :try_end_108} :catchall_112

    invoke-static {v2}, Lcom/estrongs/android/util/a/b;->a(Ljava/io/Closeable;)V

    goto :goto_c2

    :catchall_10c
    move-exception v0

    move-object v2, v1

    :goto_10e
    invoke-static {v2}, Lcom/estrongs/android/util/a/b;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_112
    move-exception v0

    goto :goto_10e

    :catch_114
    move-exception v0

    move-object v1, v0

    move-object v0, v3

    goto :goto_105

    :catch_118
    move-exception v1

    goto :goto_105

    :cond_11a
    move-object v0, v3

    goto/16 :goto_90
.end method
