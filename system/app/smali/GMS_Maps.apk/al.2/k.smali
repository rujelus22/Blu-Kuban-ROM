.class Lal/k;
.super Ljava/lang/Object;

# interfaces
.implements Lak/p;


# instance fields
.field final synthetic a:Lal/j;

.field private b:Ljava/io/FileOutputStream;

.field private c:Ljava/nio/channels/FileLock;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lal/j;Ljava/io/FileOutputStream;Ljava/nio/channels/FileLock;Ljava/lang/String;)V
    .registers 6

    const/4 v0, 0x0

    iput-object p1, p0, Lal/k;->a:Lal/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lal/k;->b:Ljava/io/FileOutputStream;

    iput-object v0, p0, Lal/k;->c:Ljava/nio/channels/FileLock;

    iput-object p2, p0, Lal/k;->b:Ljava/io/FileOutputStream;

    iput-object p3, p0, Lal/k;->c:Ljava/nio/channels/FileLock;

    iput-object p4, p0, Lal/k;->d:Ljava/lang/String;

    invoke-static {p1}, Lal/j;->a(Lal/j;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public a()Z
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lal/k;->a:Lal/j;

    invoke-static {v1}, Lal/j;->a(Lal/j;)Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lal/k;->d:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :try_start_c
    iget-object v1, p0, Lal/k;->c:Ljava/nio/channels/FileLock;

    if-eqz v1, :cond_15

    iget-object v1, p0, Lal/k;->c:Ljava/nio/channels/FileLock;

    invoke-virtual {v1}, Ljava/nio/channels/FileLock;->release()V
    :try_end_15
    .catch Ljava/nio/channels/ClosedChannelException; {:try_start_c .. :try_end_15} :catch_1e
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_15} :catch_1c

    :cond_15
    iget-object v0, p0, Lal/k;->b:Ljava/io/FileOutputStream;

    invoke-static {v0}, Lal/j;->a(Ljava/io/FileOutputStream;)Z

    move-result v0

    :goto_1b
    return v0

    :catch_1c
    move-exception v1

    goto :goto_1b

    :catch_1e
    move-exception v1

    goto :goto_1b
.end method
