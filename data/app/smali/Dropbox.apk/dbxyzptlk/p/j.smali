.class final Ldbxyzptlk/p/j;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Ldbxyzptlk/p/z;


# instance fields
.field final synthetic a:Ljava/io/FileInputStream;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:J

.field final synthetic d:J

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Ljava/lang/String;

.field final synthetic h:Ldbxyzptlk/p/g;

.field final synthetic i:I

.field final synthetic j:Ldbxyzptlk/p/i;


# direct methods
.method constructor <init>(Ldbxyzptlk/p/i;Ljava/io/FileInputStream;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ldbxyzptlk/p/g;I)V
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 993
    iput-object p1, p0, Ldbxyzptlk/p/j;->j:Ldbxyzptlk/p/i;

    iput-object p2, p0, Ldbxyzptlk/p/j;->a:Ljava/io/FileInputStream;

    iput-object p3, p0, Ldbxyzptlk/p/j;->b:Ljava/lang/String;

    iput-wide p4, p0, Ldbxyzptlk/p/j;->c:J

    iput-wide p6, p0, Ldbxyzptlk/p/j;->d:J

    iput-object p8, p0, Ldbxyzptlk/p/j;->e:Ljava/lang/String;

    iput-object p9, p0, Ldbxyzptlk/p/j;->f:Ljava/lang/String;

    iput-object p10, p0, Ldbxyzptlk/p/j;->g:Ljava/lang/String;

    iput-object p11, p0, Ldbxyzptlk/p/j;->h:Ldbxyzptlk/p/g;

    iput p12, p0, Ldbxyzptlk/p/j;->i:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;J)Ldbxyzptlk/p/t;
    .registers 18
    .parameter
    .parameter

    .prologue
    .line 997
    const-wide/16 v0, -0x1

    .line 999
    :try_start_2
    iget-object v2, p0, Ldbxyzptlk/p/j;->a:Ljava/io/FileInputStream;

    invoke-virtual {v2}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->size()J
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_b} :catch_32

    move-result-wide v0

    .line 1002
    :goto_c
    cmp-long v0, v0, p2

    if-eqz v0, :cond_16

    .line 1003
    new-instance v0, Ldbxyzptlk/p/w;

    invoke-direct {v0}, Ldbxyzptlk/p/w;-><init>()V

    throw v0

    .line 1005
    :cond_16
    iget-object v0, p0, Ldbxyzptlk/p/j;->j:Ldbxyzptlk/p/i;

    iget-object v1, p0, Ldbxyzptlk/p/j;->b:Ljava/lang/String;

    iget-wide v2, p0, Ldbxyzptlk/p/j;->c:J

    iget-wide v4, p0, Ldbxyzptlk/p/j;->d:J

    iget-object v6, p0, Ldbxyzptlk/p/j;->e:Ljava/lang/String;

    iget-object v7, p0, Ldbxyzptlk/p/j;->f:Ljava/lang/String;

    iget-object v11, p0, Ldbxyzptlk/p/j;->g:Ljava/lang/String;

    iget-object v8, p0, Ldbxyzptlk/p/j;->h:Ldbxyzptlk/p/g;

    iget-object v12, v8, Ldbxyzptlk/p/g;->b:Ljava/lang/String;

    iget v13, p0, Ldbxyzptlk/p/j;->i:I

    move-object v8, p1

    move-wide/from16 v9, p2

    invoke-static/range {v0 .. v13}, Ldbxyzptlk/p/i;->a(Ldbxyzptlk/p/i;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;Ljava/util/List;JLjava/lang/String;Ljava/lang/String;I)Ldbxyzptlk/p/t;

    move-result-object v0

    return-object v0

    .line 1000
    :catch_32
    move-exception v2

    goto :goto_c
.end method

.method public final synthetic b(Ljava/util/List;J)Ljava/lang/Object;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 993
    invoke-virtual {p0, p1, p2, p3}, Ldbxyzptlk/p/j;->a(Ljava/util/List;J)Ldbxyzptlk/p/t;

    move-result-object v0

    return-object v0
.end method
