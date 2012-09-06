.class Lcom/google/googlenav/wallpaper/e;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/googlenav/wallpaper/b;

.field private b:Lcom/google/googlenav/wallpaper/b;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/wallpaper/b;Lcom/google/googlenav/wallpaper/b;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 832
    iput-object p1, p0, Lcom/google/googlenav/wallpaper/e;->a:Lcom/google/googlenav/wallpaper/b;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 833
    iput-object p2, p0, Lcom/google/googlenav/wallpaper/e;->b:Lcom/google/googlenav/wallpaper/b;

    .line 834
    return-void
.end method

.method private a(ZLcom/google/googlenav/wallpaper/h;)Ljava/lang/String;
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 909
    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "s="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p1, :cond_52

    const-string v0, "s"

    :goto_13
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "m="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Lcom/google/googlenav/wallpaper/h;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    const/4 v0, 0x2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "z="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p2, Lcom/google/googlenav/wallpaper/h;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-static {v1}, LaT/k;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_52
    const-string v0, "f"

    goto :goto_13
.end method


# virtual methods
.method protected varargs a([Lcom/google/googlenav/wallpaper/h;)Lcom/google/googlenav/wallpaper/h;
    .registers 9
    .parameter

    .prologue
    const/16 v6, 0x4c

    const/4 v5, 0x0

    .line 839
    iget-object v0, p0, Lcom/google/googlenav/wallpaper/e;->a:Lcom/google/googlenav/wallpaper/b;

    invoke-static {v0}, Lcom/google/googlenav/wallpaper/b;->c(Lcom/google/googlenav/wallpaper/b;)Lcom/google/googlenav/wallpaper/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/wallpaper/c;->c()V

    .line 843
    iget-object v0, p0, Lcom/google/googlenav/wallpaper/e;->a:Lcom/google/googlenav/wallpaper/b;

    invoke-static {v0}, Lcom/google/googlenav/wallpaper/b;->d(Lcom/google/googlenav/wallpaper/b;)V

    .line 845
    iget-object v0, p0, Lcom/google/googlenav/wallpaper/e;->a:Lcom/google/googlenav/wallpaper/b;

    aget-object v1, p1, v5

    invoke-static {v0, v1}, Lcom/google/googlenav/wallpaper/b;->a(Lcom/google/googlenav/wallpaper/b;Lcom/google/googlenav/wallpaper/h;)Ljava/lang/String;

    move-result-object v0

    .line 851
    :try_start_19
    const-string v1, "mMXBYkGUD9yoZnaSHBYCL04mPUU="

    .line 852
    new-instance v2, Lcom/google/googlenav/wallpaper/j;

    invoke-direct {v2, v1}, Lcom/google/googlenav/wallpaper/j;-><init>(Ljava/lang/String;)V

    .line 853
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "&client=google-gmm"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/google/googlenav/wallpaper/j;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_36} :catch_7e

    move-result-object v0

    .line 863
    :goto_37
    aget-object v1, p1, v5

    invoke-virtual {v1}, Lcom/google/googlenav/wallpaper/h;->a()Ljava/lang/String;

    move-result-object v1

    .line 866
    :try_start_3d
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 867
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 868
    invoke-virtual {v0}, Ljava/net/URLConnection;->connect()V

    .line 870
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-virtual {v2}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 871
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 873
    const/16 v1, 0x400

    new-array v1, v1, [B

    .line 875
    :goto_5b
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_87

    .line 876
    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_66} :catch_67

    goto :goto_5b

    .line 891
    :catch_67
    move-exception v0

    .line 894
    iget-object v0, p0, Lcom/google/googlenav/wallpaper/e;->a:Lcom/google/googlenav/wallpaper/b;

    invoke-static {v0}, Lcom/google/googlenav/wallpaper/b;->c(Lcom/google/googlenav/wallpaper/b;)Lcom/google/googlenav/wallpaper/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/wallpaper/c;->a()V

    .line 897
    const-string v0, "d"

    aget-object v1, p1, v5

    invoke-direct {p0, v5, v1}, Lcom/google/googlenav/wallpaper/e;->a(ZLcom/google/googlenav/wallpaper/h;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v0, v1}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 901
    const/4 v0, 0x0

    :goto_7d
    return-object v0

    .line 854
    :catch_7e
    move-exception v1

    .line 859
    const-string v1, "a"

    const-string v2, "i"

    invoke-static {v6, v1, v2}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_37

    .line 879
    :cond_87
    :try_start_87
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 880
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 881
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 883
    iget-object v0, p0, Lcom/google/googlenav/wallpaper/e;->a:Lcom/google/googlenav/wallpaper/b;

    invoke-static {v0}, Lcom/google/googlenav/wallpaper/b;->c(Lcom/google/googlenav/wallpaper/b;)Lcom/google/googlenav/wallpaper/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/wallpaper/c;->b()V

    .line 886
    const/16 v0, 0x4c

    const-string v1, "d"

    const/4 v2, 0x1

    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-direct {p0, v2, v3}, Lcom/google/googlenav/wallpaper/e;->a(ZLcom/google/googlenav/wallpaper/h;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 890
    const/4 v0, 0x0

    aget-object v0, p1, v0
    :try_end_ab
    .catch Ljava/io/IOException; {:try_start_87 .. :try_end_ab} :catch_67

    goto :goto_7d
.end method

.method protected a(Lcom/google/googlenav/wallpaper/h;)V
    .registers 3
    .parameter

    .prologue
    .line 915
    if-eqz p1, :cond_7

    .line 916
    iget-object v0, p0, Lcom/google/googlenav/wallpaper/e;->b:Lcom/google/googlenav/wallpaper/b;

    invoke-static {v0, p1}, Lcom/google/googlenav/wallpaper/b;->b(Lcom/google/googlenav/wallpaper/b;Lcom/google/googlenav/wallpaper/h;)V

    .line 918
    :cond_7
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 828
    check-cast p1, [Lcom/google/googlenav/wallpaper/h;

    invoke-virtual {p0, p1}, Lcom/google/googlenav/wallpaper/e;->a([Lcom/google/googlenav/wallpaper/h;)Lcom/google/googlenav/wallpaper/h;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 828
    check-cast p1, Lcom/google/googlenav/wallpaper/h;

    invoke-virtual {p0, p1}, Lcom/google/googlenav/wallpaper/e;->a(Lcom/google/googlenav/wallpaper/h;)V

    return-void
.end method
