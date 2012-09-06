.class LV/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/common/io/m;


# instance fields
.field final synthetic a:LV/d;

.field private b:Ljava/io/FileOutputStream;

.field private c:Ljava/nio/channels/FileLock;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(LV/d;Ljava/io/FileOutputStream;Ljava/nio/channels/FileLock;Ljava/lang/String;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 278
    iput-object p1, p0, LV/e;->a:LV/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 272
    iput-object v0, p0, LV/e;->b:Ljava/io/FileOutputStream;

    .line 274
    iput-object v0, p0, LV/e;->c:Ljava/nio/channels/FileLock;

    .line 279
    iput-object p2, p0, LV/e;->b:Ljava/io/FileOutputStream;

    .line 280
    iput-object p3, p0, LV/e;->c:Ljava/nio/channels/FileLock;

    .line 281
    iput-object p4, p0, LV/e;->d:Ljava/lang/String;

    .line 282
    invoke-static {p1}, LV/d;->a(LV/d;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 283
    return-void
.end method


# virtual methods
.method public a()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 287
    iget-object v1, p0, LV/e;->a:LV/d;

    invoke-static {v1}, LV/d;->a(LV/d;)Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, LV/e;->d:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 289
    :try_start_c
    iget-object v1, p0, LV/e;->c:Ljava/nio/channels/FileLock;

    if-eqz v1, :cond_15

    .line 290
    iget-object v1, p0, LV/e;->c:Ljava/nio/channels/FileLock;

    invoke-virtual {v1}, Ljava/nio/channels/FileLock;->release()V
    :try_end_15
    .catch Ljava/nio/channels/ClosedChannelException; {:try_start_c .. :try_end_15} :catch_1e
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_15} :catch_1c

    .line 299
    :cond_15
    iget-object v0, p0, LV/e;->b:Ljava/io/FileOutputStream;

    invoke-static {v0}, LV/d;->a(Ljava/io/FileOutputStream;)Z

    move-result v0

    :goto_1b
    return v0

    .line 295
    :catch_1c
    move-exception v1

    goto :goto_1b

    .line 292
    :catch_1e
    move-exception v1

    goto :goto_1b
.end method
