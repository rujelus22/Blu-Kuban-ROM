.class public final Lcom/acquariusoft/UpdateMe/q;
.super Landroid/os/AsyncTask;


# instance fields
.field public a:I

.field public b:J

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Z

.field public h:Z

.field public i:Z

.field public j:Z

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Z

.field public n:Ljava/lang/String;

.field o:Landroid/app/Notification;

.field p:Landroid/app/NotificationManager;

.field q:Lcom/acquariusoft/UpdateMe/b/j;

.field public r:I

.field public s:Landroid/widget/CheckBox;

.field public t:Ljava/lang/String;

.field private u:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>()V
    .registers 5

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/acquariusoft/UpdateMe/q;->a:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/acquariusoft/UpdateMe/q;->b:J

    const-string v0, ""

    iput-object v0, p0, Lcom/acquariusoft/UpdateMe/q;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/acquariusoft/UpdateMe/q;->d:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/acquariusoft/UpdateMe/q;->e:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/acquariusoft/UpdateMe/q;->f:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/acquariusoft/UpdateMe/q;->g:Z

    iput-boolean v2, p0, Lcom/acquariusoft/UpdateMe/q;->h:Z

    iput-boolean v2, p0, Lcom/acquariusoft/UpdateMe/q;->i:Z

    iput-boolean v2, p0, Lcom/acquariusoft/UpdateMe/q;->j:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/acquariusoft/UpdateMe/q;->k:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/acquariusoft/UpdateMe/q;->l:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/acquariusoft/UpdateMe/q;->m:Z

    const-string v0, "0644"

    iput-object v0, p0, Lcom/acquariusoft/UpdateMe/q;->n:Ljava/lang/String;

    iput-object v3, p0, Lcom/acquariusoft/UpdateMe/q;->o:Landroid/app/Notification;

    iput-object v3, p0, Lcom/acquariusoft/UpdateMe/q;->p:Landroid/app/NotificationManager;

    iput-object v3, p0, Lcom/acquariusoft/UpdateMe/q;->q:Lcom/acquariusoft/UpdateMe/b/j;

    iput v2, p0, Lcom/acquariusoft/UpdateMe/q;->r:I

    const-string v0, ""

    iput-object v0, p0, Lcom/acquariusoft/UpdateMe/q;->t:Ljava/lang/String;

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const/16 v6, 0x22

    const-string v0, ";"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_a
    if-lt v0, v2, :cond_e

    const/4 v0, 0x0

    :goto_d
    return-object v0

    :cond_e
    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "filename"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2b

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    :cond_2b
    add-int/lit8 v0, v0, 0x1

    goto :goto_a
.end method

.method private varargs a([Ljava/lang/String;)Ljava/lang/String;
    .registers 14

    const/4 v11, -0x1

    const/4 v4, 0x1

    const/4 v0, 0x0

    :try_start_3
    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/acquariusoft/UpdateMe/q;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/q;->d:Ljava/lang/String;

    const-string v1, "sourceforge.net"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/q;->d:Ljava/lang/String;

    const-string v1, "/download"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/q;->d:Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/acquariusoft/UpdateMe/q;->d:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x9

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/acquariusoft/UpdateMe/q;->d:Ljava/lang/String;

    :cond_2c
    const/4 v0, 0x1

    aget-object v0, p1, v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/acquariusoft/UpdateMe/q;->g:Z

    :cond_3a
    const/4 v0, 0x2

    aget-object v0, p1, v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/acquariusoft/UpdateMe/q;->h:Z

    :cond_48
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/acquariusoft/UpdateMe/q;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/acquariusoft/UpdateMe/q;->d:Ljava/lang/String;

    const-string v2, "d-h.st"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8e

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/q;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/acquariusoft/UpdateMe/an;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "MD5 Sum:</span>"

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0xf

    const-string v2, "</div>"

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/acquariusoft/UpdateMe/q;->e:Ljava/lang/String;

    const-string v0, "action=\"http://"

    invoke-virtual {v1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v2, v0, 0x8

    const-string v0, "\""

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    new-instance v0, Ljava/net/URL;

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    :cond_8e
    iget-object v1, p0, Lcom/acquariusoft/UpdateMe/q;->d:Ljava/lang/String;

    const-string v2, "goo.im"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b7

    iget-object v1, p0, Lcom/acquariusoft/UpdateMe/q;->d:Ljava/lang/String;

    invoke-static {v1}, Lcom/acquariusoft/UpdateMe/an;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "MD5sum: "

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x8

    const-string v3, "</h3>"

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/acquariusoft/UpdateMe/q;->e:Ljava/lang/String;

    const-wide/16 v1, 0x2af8

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    :cond_b7
    iget-object v1, p0, Lcom/acquariusoft/UpdateMe/q;->d:Ljava/lang/String;

    const-string v2, "sourceforge.net"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_db

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    sget-object v2, Lcom/acquariusoft/UpdateMe/ao;->q:Lcom/acquariusoft/UpdateMe/b/g;

    iget-object v2, v2, Lcom/acquariusoft/UpdateMe/b/g;->e:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v4, :cond_d8

    const-string v2, "User-Agent"

    sget-object v3, Lcom/acquariusoft/UpdateMe/ao;->q:Lcom/acquariusoft/UpdateMe/b/g;

    iget-object v3, v3, Lcom/acquariusoft/UpdateMe/b/g;->e:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d8
    invoke-virtual {v1}, Ljava/net/URLConnection;->connect()V

    :cond_db
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    sget-object v2, Lcom/acquariusoft/UpdateMe/ao;->q:Lcom/acquariusoft/UpdateMe/b/g;

    iget-object v2, v2, Lcom/acquariusoft/UpdateMe/b/g;->e:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v4, :cond_f2

    const-string v2, "User-Agent"

    sget-object v3, Lcom/acquariusoft/UpdateMe/ao;->q:Lcom/acquariusoft/UpdateMe/b/g;

    iget-object v3, v3, Lcom/acquariusoft/UpdateMe/b/g;->e:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f2
    invoke-virtual {v1}, Ljava/net/URLConnection;->connect()V

    invoke-virtual {v1}, Ljava/net/URLConnection;->getContentLength()I

    move-result v2

    iput v2, p0, Lcom/acquariusoft/UpdateMe/q;->a:I

    iget v2, p0, Lcom/acquariusoft/UpdateMe/q;->a:I

    if-eq v2, v11, :cond_1f4

    const/4 v2, 0x1

    sput-boolean v2, Lcom/acquariusoft/UpdateMe/ao;->t:Z

    sget-object v2, Lcom/acquariusoft/UpdateMe/an;->d:Lcom/acquariusoft/UpdateMe/UpdateMeActivity;

    iget-object v2, v2, Lcom/acquariusoft/UpdateMe/UpdateMeActivity;->c:Landroid/app/ProgressDialog;

    sget-object v3, Lcom/acquariusoft/UpdateMe/an;->d:Lcom/acquariusoft/UpdateMe/UpdateMeActivity;

    const v4, 0x7f06000d

    invoke-virtual {v3, v4}, Lcom/acquariusoft/UpdateMe/UpdateMeActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    sget-object v2, Lcom/acquariusoft/UpdateMe/an;->d:Lcom/acquariusoft/UpdateMe/UpdateMeActivity;

    iget-object v2, v2, Lcom/acquariusoft/UpdateMe/UpdateMeActivity;->c:Landroid/app/ProgressDialog;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    :goto_11a
    const-string v2, "ANDRO_ASYNC"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Lenght of file: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/acquariusoft/UpdateMe/q;->a:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    const-string v0, "content-disposition"

    invoke-virtual {v1, v0}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_147

    invoke-static {v0}, Lcom/acquariusoft/UpdateMe/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/acquariusoft/UpdateMe/q;->t:Ljava/lang/String;

    :cond_147
    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/q;->t:Ljava/lang/String;

    if-eqz v0, :cond_151

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/q;->t:Ljava/lang/String;

    const-string v3, ""

    if-ne v0, v3, :cond_166

    :cond_151
    new-instance v0, Ljava/util/StringTokenizer;

    invoke-virtual {v1}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v1

    const-string v3, "/"

    invoke-direct {v0, v1, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_160
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-nez v1, :cond_1fb

    :cond_166
    sget-object v0, Lcom/acquariusoft/UpdateMe/an;->d:Lcom/acquariusoft/UpdateMe/UpdateMeActivity;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "download_dir"

    sget-object v3, Lcom/acquariusoft/UpdateMe/ao;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_18f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_18f
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/q;->t:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/acquariusoft/UpdateMe/q;->c:Ljava/lang/String;

    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/acquariusoft/UpdateMe/q;->c:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const-string v1, "ANDRO_ASYNC"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "File name: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/acquariusoft/UpdateMe/q;->t:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x400

    new-array v1, v1, [B

    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/acquariusoft/UpdateMe/q;->b:J

    :goto_1d1
    invoke-virtual {v2, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-eq v3, v11, :cond_1db

    iget-boolean v4, p0, Lcom/acquariusoft/UpdateMe/q;->i:Z

    if-eqz v4, :cond_203

    :cond_1db
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    iget-boolean v0, p0, Lcom/acquariusoft/UpdateMe/q;->i:Z

    if-eqz v0, :cond_1f2

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/acquariusoft/UpdateMe/q;->c:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_1f2
    :goto_1f2
    const/4 v0, 0x0

    return-object v0

    :cond_1f4
    const/4 v2, 0x0

    sput-boolean v2, Lcom/acquariusoft/UpdateMe/ao;->t:Z

    goto/16 :goto_11a

    :catch_1f9
    move-exception v0

    goto :goto_1f2

    :cond_1fb
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/acquariusoft/UpdateMe/q;->t:Ljava/lang/String;

    goto/16 :goto_160

    :cond_203
    iget-wide v4, p0, Lcom/acquariusoft/UpdateMe/q;->b:J

    int-to-long v6, v3

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/acquariusoft/UpdateMe/q;->b:J

    iget v4, p0, Lcom/acquariusoft/UpdateMe/q;->a:I

    if-eq v4, v11, :cond_244

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v7, p0, Lcom/acquariusoft/UpdateMe/q;->b:J

    const-wide/16 v9, 0x64

    mul-long/2addr v7, v9

    iget v9, p0, Lcom/acquariusoft/UpdateMe/q;->a:I

    int-to-long v9, v9

    div-long/2addr v7, v9

    long-to-int v7, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v7, p0, Lcom/acquariusoft/UpdateMe/q;->b:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {p0, v4}, Lcom/acquariusoft/UpdateMe/q;->publishProgress([Ljava/lang/Object;)V

    :goto_23f
    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v3}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_1d1

    :cond_244
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v7, p0, Lcom/acquariusoft/UpdateMe/q;->b:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {p0, v4}, Lcom/acquariusoft/UpdateMe/q;->publishProgress([Ljava/lang/Object;)V
    :try_end_25c
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_25c} :catch_1f9

    goto :goto_23f
.end method


# virtual methods
.method protected final varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/acquariusoft/UpdateMe/q;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 13

    const/high16 v10, 0x7f08

    const/4 v4, 0x5

    const v9, 0x7f060012

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/q;->u:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/q;->p:Landroid/app/NotificationManager;

    const/16 v1, 0x2a

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    iget-boolean v0, p0, Lcom/acquariusoft/UpdateMe/q;->i:Z

    if-nez v0, :cond_31a

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/acquariusoft/UpdateMe/q;->c:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_33

    iget v0, p0, Lcom/acquariusoft/UpdateMe/q;->a:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_66

    iget v0, p0, Lcom/acquariusoft/UpdateMe/q;->a:I

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/acquariusoft/UpdateMe/q;->b:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_66

    :cond_33
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v1, Lcom/acquariusoft/UpdateMe/an;->d:Lcom/acquariusoft/UpdateMe/UpdateMeActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog;->setCancelable(Z)V

    const v1, 0x7f060029

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(I)V

    sget-object v1, Lcom/acquariusoft/UpdateMe/an;->d:Lcom/acquariusoft/UpdateMe/UpdateMeActivity;

    const v2, 0x7f06002a

    invoke-virtual {v1, v2}, Lcom/acquariusoft/UpdateMe/UpdateMeActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 v1, -0x2

    sget-object v2, Lcom/acquariusoft/UpdateMe/an;->d:Lcom/acquariusoft/UpdateMe/UpdateMeActivity;

    invoke-virtual {v2, v9}, Lcom/acquariusoft/UpdateMe/UpdateMeActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/acquariusoft/UpdateMe/r;

    invoke-direct {v3, p0}, Lcom/acquariusoft/UpdateMe/r;-><init>(Lcom/acquariusoft/UpdateMe/q;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :goto_65
    return-void

    :cond_66
    const-string v0, ""

    sget-object v1, Lcom/acquariusoft/UpdateMe/ao;->c:Ljava/util/List;

    iget-object v2, p0, Lcom/acquariusoft/UpdateMe/q;->c:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-boolean v1, p0, Lcom/acquariusoft/UpdateMe/q;->g:Z

    if-eqz v1, :cond_32a

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/q;->d:Ljava/lang/String;

    const-string v1, "goo.im"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_95

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/q;->d:Ljava/lang/String;

    const-string v1, "d-h.st"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_95

    :try_start_87
    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/q;->l:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x10

    if-le v0, v1, :cond_2ae

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/q;->l:Ljava/lang/String;

    iput-object v0, p0, Lcom/acquariusoft/UpdateMe/q;->e:Ljava/lang/String;
    :try_end_95
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_95} :catch_2d1

    :cond_95
    :goto_95
    const-string v0, ""

    :try_start_97
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/acquariusoft/UpdateMe/q;->c:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/acquariusoft/UpdateMe/an;->a(Ljava/io/File;)Ljava/lang/String;
    :try_end_a1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_97 .. :try_end_a1} :catch_327
    .catch Ljava/io/IOException; {:try_start_97 .. :try_end_a1} :catch_324

    move-result-object v0

    :goto_a2
    iget-object v1, p0, Lcom/acquariusoft/UpdateMe/q;->e:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2f0

    sget-object v0, Lcom/acquariusoft/UpdateMe/an;->d:Lcom/acquariusoft/UpdateMe/UpdateMeActivity;

    const v1, 0x7f06000e

    invoke-virtual {v0, v1}, Lcom/acquariusoft/UpdateMe/UpdateMeActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_b4
    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/q;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v8, :cond_195

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/q;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "/system/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_cc

    const-string v0, "/system"

    :cond_cc
    new-array v2, v4, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "busybox mount -o remount,rw "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "busybox cp "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/acquariusoft/UpdateMe/q;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/acquariusoft/UpdateMe/q;->f:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    const/4 v3, 0x2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "busybox chmod "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/acquariusoft/UpdateMe/q;->n:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/acquariusoft/UpdateMe/q;->f:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/acquariusoft/UpdateMe/q;->c:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "busybox rm "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/acquariusoft/UpdateMe/q;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "busybox mount - o remount, ro "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v2}, Lcom/acquariusoft/UpdateMe/an;->a([Ljava/lang/String;)Z

    :try_start_156
    new-instance v0, Ljava/net/URL;

    iget-object v2, p0, Lcom/acquariusoft/UpdateMe/q;->d:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/q;->f:Ljava/lang/String;

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17e

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/q;->f:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "/"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/acquariusoft/UpdateMe/q;->f:Ljava/lang/String;

    :cond_17e
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/acquariusoft/UpdateMe/q;->f:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/acquariusoft/UpdateMe/q;->t:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/acquariusoft/UpdateMe/q;->c:Ljava/lang/String;
    :try_end_195
    .catch Ljava/net/MalformedURLException; {:try_start_156 .. :try_end_195} :catch_321

    :cond_195
    :goto_195
    sget-object v0, Lcom/acquariusoft/UpdateMe/an;->d:Lcom/acquariusoft/UpdateMe/UpdateMeActivity;

    invoke-virtual {v0, v7}, Lcom/acquariusoft/UpdateMe/UpdateMeActivity;->dismissDialog(I)V

    sget-object v0, Lcom/acquariusoft/UpdateMe/an;->d:Lcom/acquariusoft/UpdateMe/UpdateMeActivity;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "light_theme"

    invoke-interface {v0, v2, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/acquariusoft/UpdateMe/ao;->f:Z

    if-nez v0, :cond_2fc

    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v2, Lcom/acquariusoft/UpdateMe/an;->d:Lcom/acquariusoft/UpdateMe/UpdateMeActivity;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object v2, v0

    :goto_1b2
    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/q;->q:Lcom/acquariusoft/UpdateMe/b/j;

    iget v0, v0, Lcom/acquariusoft/UpdateMe/b/j;->m:I

    if-lez v0, :cond_1df

    iget-boolean v0, p0, Lcom/acquariusoft/UpdateMe/q;->h:Z

    if-eqz v0, :cond_1df

    sget-object v0, Lcom/acquariusoft/UpdateMe/ao;->q:Lcom/acquariusoft/UpdateMe/b/g;

    iget v0, v0, Lcom/acquariusoft/UpdateMe/b/g;->f:I

    if-lez v0, :cond_1df

    new-instance v0, Landroid/view/ContextThemeWrapper;

    sget-object v3, Lcom/acquariusoft/UpdateMe/an;->d:Lcom/acquariusoft/UpdateMe/UpdateMeActivity;

    invoke-direct {v0, v3, v10}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    const v3, 0x7f030008

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v0, 0x7f070018

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/acquariusoft/UpdateMe/q;->s:Landroid/widget/CheckBox;

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    :cond_1df
    invoke-virtual {v2, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/acquariusoft/UpdateMe/an;->d:Lcom/acquariusoft/UpdateMe/UpdateMeActivity;

    const v4, 0x7f060010

    invoke-virtual {v3, v4}, Lcom/acquariusoft/UpdateMe/UpdateMeActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/acquariusoft/UpdateMe/q;->c:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\r\n\r\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/acquariusoft/UpdateMe/q;->h:Z

    if-eqz v1, :cond_23a

    iget-object v1, p0, Lcom/acquariusoft/UpdateMe/q;->f:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_23a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "\r\n\r\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/acquariusoft/UpdateMe/an;->d:Lcom/acquariusoft/UpdateMe/UpdateMeActivity;

    const v3, 0x7f060011

    invoke-virtual {v1, v3}, Lcom/acquariusoft/UpdateMe/UpdateMeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_23a
    iget-object v1, p0, Lcom/acquariusoft/UpdateMe/q;->q:Lcom/acquariusoft/UpdateMe/b/j;

    iget v1, v1, Lcom/acquariusoft/UpdateMe/b/j;->m:I

    if-lez v1, :cond_260

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "\r\n\r\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/acquariusoft/UpdateMe/an;->d:Lcom/acquariusoft/UpdateMe/UpdateMeActivity;

    const v3, 0x7f060042

    invoke-virtual {v1, v3}, Lcom/acquariusoft/UpdateMe/UpdateMeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_260
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-boolean v0, p0, Lcom/acquariusoft/UpdateMe/q;->h:Z

    if-eqz v0, :cond_30b

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/q;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_30b

    sget-object v0, Lcom/acquariusoft/UpdateMe/an;->d:Lcom/acquariusoft/UpdateMe/UpdateMeActivity;

    const v1, 0x7f060013

    invoke-virtual {v0, v1}, Lcom/acquariusoft/UpdateMe/UpdateMeActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/acquariusoft/UpdateMe/s;

    invoke-direct {v1, p0}, Lcom/acquariusoft/UpdateMe/s;-><init>(Lcom/acquariusoft/UpdateMe/q;)V

    invoke-virtual {v2, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    sget-object v0, Lcom/acquariusoft/UpdateMe/an;->d:Lcom/acquariusoft/UpdateMe/UpdateMeActivity;

    invoke-virtual {v0, v9}, Lcom/acquariusoft/UpdateMe/UpdateMeActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/acquariusoft/UpdateMe/t;

    invoke-direct {v1, p0}, Lcom/acquariusoft/UpdateMe/t;-><init>(Lcom/acquariusoft/UpdateMe/q;)V

    invoke-virtual {v2, v0, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    sget-object v0, Lcom/acquariusoft/UpdateMe/ao;->q:Lcom/acquariusoft/UpdateMe/b/g;

    iget v0, v0, Lcom/acquariusoft/UpdateMe/b/g;->f:I

    if-lez v0, :cond_2a5

    sget-object v0, Lcom/acquariusoft/UpdateMe/an;->d:Lcom/acquariusoft/UpdateMe/UpdateMeActivity;

    const v1, 0x7f060021

    invoke-virtual {v0, v1}, Lcom/acquariusoft/UpdateMe/UpdateMeActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/acquariusoft/UpdateMe/u;

    invoke-direct {v1, p0}, Lcom/acquariusoft/UpdateMe/u;-><init>(Lcom/acquariusoft/UpdateMe/q;)V

    invoke-virtual {v2, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_2a5
    :goto_2a5
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_65

    :cond_2ae
    :try_start_2ae
    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/q;->k:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v4, :cond_2d4

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/q;->k:Ljava/lang/String;

    invoke-static {v0}, Lcom/acquariusoft/UpdateMe/an;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/acquariusoft/UpdateMe/q;->e:Ljava/lang/String;

    :goto_2be
    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/q;->e:Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/acquariusoft/UpdateMe/q;->e:Ljava/lang/String;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/acquariusoft/UpdateMe/q;->e:Ljava/lang/String;

    goto/16 :goto_95

    :catch_2d1
    move-exception v0

    goto/16 :goto_95

    :cond_2d4
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/acquariusoft/UpdateMe/q;->d:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".md5sum"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/acquariusoft/UpdateMe/an;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/acquariusoft/UpdateMe/q;->e:Ljava/lang/String;
    :try_end_2ef
    .catch Ljava/lang/Exception; {:try_start_2ae .. :try_end_2ef} :catch_2d1

    goto :goto_2be

    :cond_2f0
    sget-object v0, Lcom/acquariusoft/UpdateMe/an;->d:Lcom/acquariusoft/UpdateMe/UpdateMeActivity;

    const v1, 0x7f06000f

    invoke-virtual {v0, v1}, Lcom/acquariusoft/UpdateMe/UpdateMeActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_b4

    :cond_2fc
    new-instance v0, Landroid/app/AlertDialog$Builder;

    new-instance v2, Landroid/view/ContextThemeWrapper;

    sget-object v3, Lcom/acquariusoft/UpdateMe/an;->d:Lcom/acquariusoft/UpdateMe/UpdateMeActivity;

    invoke-direct {v2, v3, v10}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object v2, v0

    goto/16 :goto_1b2

    :cond_30b
    sget-object v0, Lcom/acquariusoft/UpdateMe/an;->d:Lcom/acquariusoft/UpdateMe/UpdateMeActivity;

    invoke-virtual {v0, v9}, Lcom/acquariusoft/UpdateMe/UpdateMeActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/acquariusoft/UpdateMe/v;

    invoke-direct {v1, p0}, Lcom/acquariusoft/UpdateMe/v;-><init>(Lcom/acquariusoft/UpdateMe/q;)V

    invoke-virtual {v2, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_2a5

    :cond_31a
    sget-object v0, Lcom/acquariusoft/UpdateMe/an;->d:Lcom/acquariusoft/UpdateMe/UpdateMeActivity;

    invoke-virtual {v0, v7}, Lcom/acquariusoft/UpdateMe/UpdateMeActivity;->dismissDialog(I)V

    goto/16 :goto_65

    :catch_321
    move-exception v0

    goto/16 :goto_195

    :catch_324
    move-exception v1

    goto/16 :goto_a2

    :catch_327
    move-exception v1

    goto/16 :goto_a2

    :cond_32a
    move-object v1, v0

    goto/16 :goto_b4
.end method

.method protected final onPreExecute()V
    .registers 9

    const v7, 0x7f06000d

    const/4 v6, 0x0

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    sget-object v0, Lcom/acquariusoft/UpdateMe/an;->d:Lcom/acquariusoft/UpdateMe/UpdateMeActivity;

    invoke-virtual {v0, v6}, Lcom/acquariusoft/UpdateMe/UpdateMeActivity;->showDialog(I)V

    sget-object v0, Lcom/acquariusoft/UpdateMe/an;->d:Lcom/acquariusoft/UpdateMe/UpdateMeActivity;

    iget-object v0, v0, Lcom/acquariusoft/UpdateMe/UpdateMeActivity;->c:Landroid/app/ProgressDialog;

    sget-object v1, Lcom/acquariusoft/UpdateMe/an;->d:Lcom/acquariusoft/UpdateMe/UpdateMeActivity;

    invoke-virtual {v1, v7}, Lcom/acquariusoft/UpdateMe/UpdateMeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/acquariusoft/UpdateMe/an;->d:Lcom/acquariusoft/UpdateMe/UpdateMeActivity;

    iget-object v0, v0, Lcom/acquariusoft/UpdateMe/UpdateMeActivity;->c:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v6}, Landroid/app/ProgressDialog;->setProgress(I)V

    sget-object v0, Lcom/acquariusoft/UpdateMe/an;->d:Lcom/acquariusoft/UpdateMe/UpdateMeActivity;

    iget-object v0, v0, Lcom/acquariusoft/UpdateMe/UpdateMeActivity;->c:Landroid/app/ProgressDialog;

    sget-object v1, Lcom/acquariusoft/UpdateMe/an;->d:Lcom/acquariusoft/UpdateMe/UpdateMeActivity;

    invoke-virtual {v1, v7}, Lcom/acquariusoft/UpdateMe/UpdateMeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/acquariusoft/UpdateMe/an;->d:Lcom/acquariusoft/UpdateMe/UpdateMeActivity;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Lcom/acquariusoft/UpdateMe/UpdateMeActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "My Lock"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/acquariusoft/UpdateMe/q;->u:Landroid/os/PowerManager$WakeLock;

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/q;->u:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/acquariusoft/UpdateMe/an;->d:Lcom/acquariusoft/UpdateMe/UpdateMeActivity;

    const-class v2, Lcom/acquariusoft/UpdateMe/UpdateMeActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x3000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    sget-object v1, Lcom/acquariusoft/UpdateMe/an;->d:Lcom/acquariusoft/UpdateMe/UpdateMeActivity;

    invoke-static {v1, v6, v0, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    new-instance v1, Landroid/app/Notification;

    const v2, 0x7f020001

    sget-object v3, Lcom/acquariusoft/UpdateMe/an;->d:Lcom/acquariusoft/UpdateMe/UpdateMeActivity;

    invoke-virtual {v3, v7}, Lcom/acquariusoft/UpdateMe/UpdateMeActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    iput-object v1, p0, Lcom/acquariusoft/UpdateMe/q;->o:Landroid/app/Notification;

    iget-object v1, p0, Lcom/acquariusoft/UpdateMe/q;->o:Landroid/app/Notification;

    iget-object v2, p0, Lcom/acquariusoft/UpdateMe/q;->o:Landroid/app/Notification;

    iget v2, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v1, Landroid/app/Notification;->flags:I

    iget-object v1, p0, Lcom/acquariusoft/UpdateMe/q;->o:Landroid/app/Notification;

    new-instance v2, Landroid/widget/RemoteViews;

    sget-object v3, Lcom/acquariusoft/UpdateMe/an;->d:Lcom/acquariusoft/UpdateMe/UpdateMeActivity;

    invoke-virtual {v3}, Lcom/acquariusoft/UpdateMe/UpdateMeActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f030009

    invoke-direct {v2, v3, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v2, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/acquariusoft/UpdateMe/q;->o:Landroid/app/Notification;

    iput-object v0, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/q;->o:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v1, 0x7f07001d

    const v2, 0x7f020002

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/q;->o:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v1, 0x7f07001e

    sget-object v2, Lcom/acquariusoft/UpdateMe/an;->d:Lcom/acquariusoft/UpdateMe/UpdateMeActivity;

    invoke-virtual {v2, v7}, Lcom/acquariusoft/UpdateMe/UpdateMeActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/q;->o:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v1, 0x7f07001f

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v6, v6}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    sget-object v0, Lcom/acquariusoft/UpdateMe/an;->d:Lcom/acquariusoft/UpdateMe/UpdateMeActivity;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Lcom/acquariusoft/UpdateMe/UpdateMeActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/acquariusoft/UpdateMe/q;->p:Landroid/app/NotificationManager;

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/q;->p:Landroid/app/NotificationManager;

    const/16 v1, 0x2a

    iget-object v2, p0, Lcom/acquariusoft/UpdateMe/q;->o:Landroid/app/Notification;

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method protected final varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .registers 9

    const-wide/high16 v5, 0x4130

    const/4 v0, 0x0

    check-cast p1, [Ljava/lang/String;

    :try_start_5
    iget v1, p0, Lcom/acquariusoft/UpdateMe/q;->a:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_bc

    sget-object v0, Lcom/acquariusoft/UpdateMe/an;->d:Lcom/acquariusoft/UpdateMe/UpdateMeActivity;

    iget-object v0, v0, Lcom/acquariusoft/UpdateMe/UpdateMeActivity;->c:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/acquariusoft/UpdateMe/ao;->u:Ljava/text/DecimalFormat;

    const/4 v2, 0x1

    aget-object v2, p1, v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    div-double/2addr v2, v5

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " MB/ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/acquariusoft/UpdateMe/ao;->u:Ljava/text/DecimalFormat;

    iget v2, p0, Lcom/acquariusoft/UpdateMe/q;->a:I

    int-to-double v2, v2

    div-double/2addr v2, v5

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " MB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/acquariusoft/UpdateMe/an;->d:Lcom/acquariusoft/UpdateMe/UpdateMeActivity;

    iget-object v1, v1, Lcom/acquariusoft/UpdateMe/UpdateMeActivity;->c:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget v1, p0, Lcom/acquariusoft/UpdateMe/q;->r:I

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-eq v1, v2, :cond_bb

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    iget v1, p0, Lcom/acquariusoft/UpdateMe/q;->r:I

    iget-object v1, p0, Lcom/acquariusoft/UpdateMe/q;->o:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v2, 0x7f07001f

    const/16 v3, 0x64

    const/4 v4, 0x0

    aget-object v4, p1, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    iget-object v1, p0, Lcom/acquariusoft/UpdateMe/q;->o:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v2, 0x7f07001e

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, " "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "%"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/q;->p:Landroid/app/NotificationManager;

    const/16 v1, 0x2a

    iget-object v2, p0, Lcom/acquariusoft/UpdateMe/q;->o:Landroid/app/Notification;

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/acquariusoft/UpdateMe/q;->r:I

    :cond_bb
    :goto_bb
    return-void

    :cond_bc
    iget-boolean v1, p0, Lcom/acquariusoft/UpdateMe/q;->m:Z

    if-nez v1, :cond_d2

    const/4 v1, 0x0

    sput-boolean v1, Lcom/acquariusoft/UpdateMe/ao;->t:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/acquariusoft/UpdateMe/q;->m:Z

    sget-object v1, Lcom/acquariusoft/UpdateMe/an;->d:Lcom/acquariusoft/UpdateMe/UpdateMeActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/acquariusoft/UpdateMe/UpdateMeActivity;->dismissDialog(I)V

    sget-object v1, Lcom/acquariusoft/UpdateMe/an;->d:Lcom/acquariusoft/UpdateMe/UpdateMeActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/acquariusoft/UpdateMe/UpdateMeActivity;->showDialog(I)V

    :cond_d2
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/acquariusoft/UpdateMe/an;->d:Lcom/acquariusoft/UpdateMe/UpdateMeActivity;

    const v3, 0x7f06000d

    invoke-virtual {v2, v3}, Lcom/acquariusoft/UpdateMe/UpdateMeActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/acquariusoft/UpdateMe/ao;->u:Ljava/text/DecimalFormat;

    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    div-double/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " MB"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/acquariusoft/UpdateMe/an;->d:Lcom/acquariusoft/UpdateMe/UpdateMeActivity;

    iget-object v2, v2, Lcom/acquariusoft/UpdateMe/UpdateMeActivity;->c:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget v2, p0, Lcom/acquariusoft/UpdateMe/q;->r:I

    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-eq v2, v3, :cond_bb

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iget v3, p0, Lcom/acquariusoft/UpdateMe/q;->r:I

    sub-int/2addr v2, v3

    :goto_122
    if-lt v0, v2, :cond_130

    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/acquariusoft/UpdateMe/q;->r:I

    goto :goto_bb

    :catch_12e
    move-exception v0

    goto :goto_bb

    :cond_130
    iget-object v3, p0, Lcom/acquariusoft/UpdateMe/q;->o:Landroid/app/Notification;

    iget-object v3, v3, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v4, 0x7f07001e

    invoke-virtual {v3, v4, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/acquariusoft/UpdateMe/q;->p:Landroid/app/NotificationManager;

    const/16 v4, 0x2a

    iget-object v5, p0, Lcom/acquariusoft/UpdateMe/q;->o:Landroid/app/Notification;

    invoke-virtual {v3, v4, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_143
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_143} :catch_12e

    add-int/lit8 v0, v0, 0x1

    goto :goto_122
.end method
