.class public Ldbxyzptlk/s/b;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static a:Ljava/util/concurrent/ThreadPoolExecutor;

.field private static b:Ldbxyzptlk/s/a;

.field private static c:I


# instance fields
.field private d:Ljava/lang/String;

.field private e:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 55
    const/4 v0, 0x3

    sput v0, Ldbxyzptlk/s/b;->c:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ldbxyzptlk/s/c;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-object p1, p0, Ldbxyzptlk/s/b;->d:Ljava/lang/String;

    .line 106
    iput-object p2, p0, Ldbxyzptlk/s/b;->e:Landroid/os/Handler;

    .line 107
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)V
    .registers 5
    .parameter

    .prologue
    .line 87
    const-class v1, Ldbxyzptlk/s/b;

    monitor-enter v1

    :try_start_3
    sget-object v0, Ldbxyzptlk/s/b;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v0, :cond_10

    .line 88
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sput-object v0, Ldbxyzptlk/s/b;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 90
    :cond_10
    sget-object v0, Ldbxyzptlk/s/b;->b:Ldbxyzptlk/s/a;

    if-nez v0, :cond_1e

    .line 91
    new-instance v0, Ldbxyzptlk/s/a;

    const/16 v2, 0x19

    const/4 v3, 0x5

    invoke-direct {v0, p0, v2, v3}, Ldbxyzptlk/s/a;-><init>(Landroid/content/Context;II)V

    sput-object v0, Ldbxyzptlk/s/b;->b:Ldbxyzptlk/s/a;
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_20

    .line 93
    :cond_1e
    monitor-exit v1

    return-void

    .line 87
    :catchall_20
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Ljava/lang/String;Ldbxyzptlk/s/c;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 147
    new-instance v0, Ldbxyzptlk/s/b;

    invoke-direct {v0, p0, p1}, Ldbxyzptlk/s/b;-><init>(Ljava/lang/String;Ldbxyzptlk/s/c;)V

    .line 148
    sget-object v1, Ldbxyzptlk/s/b;->b:Ldbxyzptlk/s/a;

    monitor-enter v1

    .line 149
    :try_start_8
    sget-object v2, Ldbxyzptlk/s/b;->b:Ldbxyzptlk/s/a;

    invoke-virtual {v2, p0}, Ldbxyzptlk/s/a;->a(Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 150
    if-nez v2, :cond_17

    .line 152
    sget-object v2, Ldbxyzptlk/s/b;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 156
    :goto_15
    monitor-exit v1

    .line 157
    return-void

    .line 154
    :cond_17
    invoke-virtual {v0, v2}, Ldbxyzptlk/s/b;->a(Landroid/graphics/Bitmap;)V

    goto :goto_15

    .line 156
    :catchall_1b
    move-exception v0

    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_1b

    throw v0
.end method


# virtual methods
.method public final a(Landroid/graphics/Bitmap;)V
    .registers 5
    .parameter

    .prologue
    .line 199
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 200
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 201
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 202
    const-string v2, "droidfu:extra_bitmap"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 203
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 205
    iget-object v1, p0, Ldbxyzptlk/s/b;->e:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 206
    return-void
.end method

.method public run()V
    .registers 6

    .prologue
    .line 170
    const/4 v1, 0x0

    .line 171
    const/4 v0, 0x1

    .line 173
    :goto_2
    sget v2, Ldbxyzptlk/s/b;->c:I

    if-gt v0, v2, :cond_65

    .line 175
    :try_start_6
    new-instance v2, Ljava/net/URL;

    iget-object v3, p0, Ldbxyzptlk/s/b;->d:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 176
    invoke-virtual {v2}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_14} :catch_63

    move-result-object v2

    .line 177
    :try_start_15
    sget-object v3, Ldbxyzptlk/s/b;->b:Ldbxyzptlk/s/a;

    monitor-enter v3
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_18} :catch_29

    .line 178
    :try_start_18
    sget-object v1, Ldbxyzptlk/s/b;->b:Ldbxyzptlk/s/a;

    iget-object v4, p0, Ldbxyzptlk/s/b;->d:Ljava/lang/String;

    invoke-virtual {v1, v4, v2}, Ldbxyzptlk/s/a;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 179
    monitor-exit v3
    :try_end_20
    .catchall {:try_start_18 .. :try_end_20} :catchall_26

    .line 193
    :goto_20
    if-eqz v2, :cond_25

    .line 194
    invoke-virtual {p0, v2}, Ldbxyzptlk/s/b;->a(Landroid/graphics/Bitmap;)V

    .line 196
    :cond_25
    return-void

    .line 179
    :catchall_26
    move-exception v1

    :try_start_27
    monitor-exit v3
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    :try_start_28
    throw v1
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_29} :catch_29

    .line 181
    :catch_29
    move-exception v1

    move-object v1, v2

    .line 182
    :goto_2b
    const-class v2, Ldbxyzptlk/s/b;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "download for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Ldbxyzptlk/s/b;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " failed (attempt "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    const-wide/16 v2, 0x7d0

    :try_start_5b
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5e
    .catch Ljava/lang/InterruptedException; {:try_start_5b .. :try_end_5e} :catch_61

    .line 189
    :goto_5e
    add-int/lit8 v0, v0, 0x1

    .line 190
    goto :goto_2

    .line 186
    :catch_61
    move-exception v2

    goto :goto_5e

    .line 181
    :catch_63
    move-exception v2

    goto :goto_2b

    :cond_65
    move-object v2, v1

    goto :goto_20
.end method
