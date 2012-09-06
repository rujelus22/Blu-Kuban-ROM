.class public LtB;
.super Ljava/lang/Object;
.source "ItemToUpload.java"


# instance fields
.field private a:I

.field private a:LZz;

.field private final a:LanD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<+",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private a:Landroid/net/Uri;

.field private a:Ljava/lang/String;

.field private a:Z

.field private final b:LanD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<+",
            "LXP;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/String;

.field private b:Z

.field private c:Ljava/lang/String;

.field private c:Z


# direct methods
.method constructor <init>(LanD;LanD;)V
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LanD",
            "<+",
            "Landroid/content/Context;",
            ">;",
            "LanD",
            "<+",
            "LXP;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, LtB;->c:Z

    .line 44
    iput-object p1, p0, LtB;->a:LanD;

    .line 45
    iput-object p2, p0, LtB;->b:LanD;

    .line 46
    return-void
.end method

.method static synthetic a(LtB;)I
    .registers 2
    .parameter

    .prologue
    .line 26
    iget v0, p0, LtB;->a:I

    return v0
.end method

.method static synthetic a(LtB;I)I
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 26
    iput p1, p0, LtB;->a:I

    return p1
.end method

.method private a(Landroid/net/Uri;LXP;)LZz;
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 233
    .line 235
    :try_start_0
    iget-object v0, p0, LtB;->a:LanD;

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_f
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_f} :catch_34

    move-result-object v0

    .line 243
    :try_start_10
    new-instance v1, LZz;

    invoke-static {}, LRz;->a()LRy;

    move-result-object v2

    invoke-interface {v2}, LRy;->a()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2}, LZz;-><init>(Ljava/io/File;)V

    .line 244
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-virtual {v1}, LZz;->a()Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 245
    new-instance v3, LsX;

    new-instance v4, LtC;

    invoke-direct {v4, p0}, LtC;-><init>(LtB;)V

    invoke-direct {v3, v0, v4}, LsX;-><init>(Ljava/io/InputStream;LsY;)V

    .line 253
    invoke-interface {p2, v3, v2}, LXP;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_33
    .catch LsZ; {:try_start_10 .. :try_end_33} :catch_3d
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_33} :catch_3f

    .line 260
    return-object v1

    .line 236
    :catch_34
    move-exception v0

    .line 237
    new-instance v0, LtH;

    const-string v1, "Shared item not found."

    invoke-direct {v0, v1}, LtH;-><init>(Ljava/lang/String;)V

    throw v0

    .line 254
    :catch_3d
    move-exception v0

    .line 255
    throw v0

    .line 256
    :catch_3f
    move-exception v0

    .line 257
    new-instance v1, LtH;

    const-string v2, "Error while creating temp file for uploading."

    invoke-direct {v1, v2, v0}, LtH;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method static synthetic a(LtB;)LZz;
    .registers 2
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, LtB;->a:LZz;

    return-object v0
.end method

.method static synthetic a(LtB;LZz;)LZz;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 26
    iput-object p1, p0, LtB;->a:LZz;

    return-object p1
.end method

.method static synthetic a(LtB;)LanD;
    .registers 2
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, LtB;->a:LanD;

    return-object v0
.end method

.method static synthetic a(LtB;)Landroid/net/Uri;
    .registers 2
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, LtB;->a:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic a(LtB;Landroid/net/Uri;)Landroid/net/Uri;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 26
    iput-object p1, p0, LtB;->a:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic a(LtB;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, LtB;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(LtB;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 26
    iput-object p1, p0, LtB;->a:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(LtB;)Z
    .registers 2
    .parameter

    .prologue
    .line 26
    iget-boolean v0, p0, LtB;->b:Z

    return v0
.end method

.method static synthetic a(LtB;Z)Z
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 26
    iput-boolean p1, p0, LtB;->a:Z

    return p1
.end method

.method static synthetic b(LtB;)LanD;
    .registers 2
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, LtB;->b:LanD;

    return-object v0
.end method

.method static synthetic b(LtB;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, LtB;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(LtB;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 26
    iput-object p1, p0, LtB;->b:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(LtB;)Z
    .registers 2
    .parameter

    .prologue
    .line 26
    iget-boolean v0, p0, LtB;->a:Z

    return v0
.end method

.method static synthetic b(LtB;Z)Z
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 26
    iput-boolean p1, p0, LtB;->b:Z

    return p1
.end method

.method static synthetic c(LtB;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, LtB;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(LtB;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 26
    iput-object p1, p0, LtB;->c:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 161
    iget v0, p0, LtB;->a:I

    return v0
.end method

.method public a()LZz;
    .registers 2

    .prologue
    .line 141
    iget-object v0, p0, LtB;->a:LZz;

    return-object v0
.end method

.method public a()Landroid/net/Uri;
    .registers 2

    .prologue
    .line 165
    iget-object v0, p0, LtB;->a:Landroid/net/Uri;

    return-object v0
.end method

.method public a()Ljava/io/File;
    .registers 2

    .prologue
    .line 134
    iget-object v0, p0, LtB;->a:LZz;

    if-nez v0, :cond_6

    .line 135
    const/4 v0, 0x0

    .line 137
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, LtB;->a:LZz;

    invoke-virtual {v0}, LZz;->a()Ljava/io/File;

    move-result-object v0

    goto :goto_5
.end method

.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 130
    iget-object v0, p0, LtB;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a()LtB;
    .registers 4

    .prologue
    .line 200
    invoke-virtual {p0}, LtB;->a()LZz;

    move-result-object v0

    if-nez v0, :cond_2f

    .line 201
    invoke-virtual {p0}, LtB;->a()Landroid/net/Uri;

    move-result-object v1

    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SourceUri of ItemToUpload is null."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, LafQ;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    iget-object v0, p0, LtB;->b:LanD;

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LXP;

    invoke-direct {p0, v1, v0}, LtB;->a(Landroid/net/Uri;LXP;)LZz;

    move-result-object v0

    .line 204
    if-nez v0, :cond_30

    .line 205
    const/4 p0, 0x0

    .line 214
    :cond_2f
    :goto_2f
    return-object p0

    .line 207
    :cond_30
    new-instance v1, LtD;

    invoke-direct {v1, p0}, LtD;-><init>(LtB;)V

    invoke-virtual {v1, v0}, LtD;->a(LZz;)LtD;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, LtD;->b(Z)LtD;

    move-result-object v0

    invoke-virtual {v0}, LtD;->a()LtB;

    move-result-object v0

    .line 211
    invoke-virtual {p0}, LtB;->a()V

    move-object p0, v0

    .line 212
    goto :goto_2f
.end method

.method public a()V
    .registers 2

    .prologue
    .line 185
    iget-object v0, p0, LtB;->a:LZz;

    if-eqz v0, :cond_d

    iget-boolean v0, p0, LtB;->b:Z

    if-eqz v0, :cond_d

    .line 186
    iget-object v0, p0, LtB;->a:LZz;

    invoke-virtual {v0}, LZz;->a()Z

    .line 188
    :cond_d
    return-void
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 153
    iget-boolean v0, p0, LtB;->a:Z

    return v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 145
    iget-object v0, p0, LtB;->b:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized b()V
    .registers 2

    .prologue
    .line 218
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, LtB;->c:Z
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    .line 219
    monitor-exit p0

    return-void

    .line 218
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()Z
    .registers 2

    .prologue
    .line 222
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, LtB;->c:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 149
    iget-object v0, p0, LtB;->c:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Upload Item"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 171
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " NAME="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, LtB;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " MIME="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, LtB;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ACCOUNTNAME="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, LtB;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " CONVERT="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, LtB;->a:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " DELETEAFTERUPLOAD="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, LtB;->b:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ORIENTATION="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, LtB;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
