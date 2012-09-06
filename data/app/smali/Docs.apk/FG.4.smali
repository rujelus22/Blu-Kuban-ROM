.class public LFG;
.super Ljava/lang/Object;
.source "ImageFetcher.java"


# instance fields
.field private final a:LFJ;

.field private final a:LIL;

.field private final a:LXP;

.field private final a:Landroid/accounts/Account;

.field private final a:Landroid/content/Context;

.field private final a:Ljava/lang/String;

.field private final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "LFL;",
            ">;"
        }
    .end annotation
.end field

.field private final a:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "LFK;",
            ">;"
        }
    .end annotation
.end field

.field private final a:[Lcg;

.field private final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "LFK;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/accounts/Account;LFJ;ILjava/lang/String;LIL;LXP;)V
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, LFG;->a:Ljava/util/HashMap;

    .line 160
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, LFG;->b:Ljava/util/HashMap;

    .line 162
    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v0, p0, LFG;->a:Ljava/util/concurrent/BlockingQueue;

    .line 174
    iput-object p1, p0, LFG;->a:Landroid/content/Context;

    .line 175
    iput-object p2, p0, LFG;->a:Landroid/accounts/Account;

    .line 176
    iput-object p3, p0, LFG;->a:LFJ;

    .line 177
    iput-object p5, p0, LFG;->a:Ljava/lang/String;

    .line 178
    iput-object p6, p0, LFG;->a:LIL;

    .line 179
    iput-object p7, p0, LFG;->a:LXP;

    .line 181
    new-array v0, p4, [LFI;

    iput-object v0, p0, LFG;->a:[Lcg;

    .line 182
    const/4 v0, 0x0

    :goto_29
    if-ge v0, p4, :cond_3f

    .line 183
    iget-object v1, p0, LFG;->a:[Lcg;

    new-instance v2, LFI;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, LFI;-><init>(LFG;LFH;)V

    aput-object v2, v1, v0

    .line 184
    iget-object v1, p0, LFG;->a:[Lcg;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcg;->start()V

    .line 182
    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    .line 186
    :cond_3f
    return-void
.end method

.method static synthetic a(LFG;)LIL;
    .registers 2
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, LFG;->a:LIL;

    return-object v0
.end method

.method static synthetic a(LFG;)LXP;
    .registers 2
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, LFG;->a:LXP;

    return-object v0
.end method

.method static synthetic a(LFG;)Landroid/accounts/Account;
    .registers 2
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, LFG;->a:Landroid/accounts/Account;

    return-object v0
.end method

.method static synthetic a(LFG;)Landroid/content/Context;
    .registers 2
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, LFG;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(LFG;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, LFG;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(LFG;)Ljava/util/concurrent/BlockingQueue;
    .registers 2
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, LFG;->a:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method

.method private a(I)V
    .registers 4
    .parameter

    .prologue
    .line 285
    iget-object v0, p0, LFG;->b:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LFK;

    .line 286
    if-eqz v0, :cond_13

    .line 287
    iget-object v1, p0, LFG;->a:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    :cond_13
    return-void
.end method

.method static synthetic a(LFG;LFK;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, LFG;->a(LFK;Ljava/lang/String;)V

    return-void
.end method

.method private declared-synchronized a(LFK;Ljava/lang/String;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 292
    monitor-enter p0

    :try_start_1
    invoke-static {p1}, LFK;->b(LFK;)I

    move-result v1

    .line 293
    iget-object v0, p0, LFG;->a:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LFL;

    .line 294
    if-eqz v0, :cond_26

    .line 295
    const-string v2, "ImageFetcher"

    const-string v3, "Repeated completed requests, not suppose to happen"

    invoke-static {v2, v3}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    new-instance v2, Ljava/io/File;

    invoke-static {v0}, LFL;->a(LFL;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 298
    :cond_26
    iget-object v0, p0, LFG;->a:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, LFL;

    invoke-static {p1}, LFK;->c(LFK;)I

    move-result v4

    invoke-direct {v3, p2, v4}, LFL;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    invoke-direct {p0, v1}, LFG;->a(I)V

    .line 301
    iget-object v0, p0, LFG;->a:LFJ;

    if-eqz v0, :cond_44

    .line 302
    iget-object v0, p0, LFG;->a:LFJ;

    invoke-interface {v0, v1, p2}, LFJ;->a(ILjava/lang/String;)V
    :try_end_44
    .catchall {:try_start_1 .. :try_end_44} :catchall_46

    .line 304
    :cond_44
    monitor-exit p0

    return-void

    .line 292
    :catchall_46
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized a(I)Landroid/graphics/Bitmap;
    .registers 5
    .parameter

    .prologue
    .line 222
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, LFG;->a:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LFL;

    .line 223
    if-eqz v0, :cond_33

    new-instance v1, Ljava/io/File;

    invoke-static {v0}, LFL;->a(LFL;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_33

    .line 224
    invoke-static {v0}, LFL;->a(LFL;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 225
    if-nez v0, :cond_31

    .line 226
    iget-object v1, p0, LFG;->a:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_31
    .catchall {:try_start_1 .. :try_end_31} :catchall_3e

    .line 231
    :cond_31
    :goto_31
    monitor-exit p0

    return-object v0

    .line 230
    :cond_33
    :try_start_33
    iget-object v0, p0, LFG;->a:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3c
    .catchall {:try_start_33 .. :try_end_3c} :catchall_3e

    .line 231
    const/4 v0, 0x0

    goto :goto_31

    .line 222
    :catchall_3e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(II)Landroid/graphics/Bitmap;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 240
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, LFG;->a:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LFL;

    .line 241
    if-eqz v0, :cond_1b

    invoke-static {v0}, LFL;->a(LFL;)I

    move-result v0

    if-le v0, p2, :cond_1b

    .line 242
    invoke-virtual {p0, p1}, LFG;->a(I)Landroid/graphics/Bitmap;
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1d

    move-result-object v0

    .line 244
    :goto_19
    monitor-exit p0

    return-object v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_19

    .line 240
    :catchall_1d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a()V
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 192
    invoke-virtual {p0}, LFG;->b()V

    .line 193
    iget-object v2, p0, LFG;->a:[Lcg;

    array-length v3, v2

    move v1, v0

    :goto_8
    if-ge v1, v3, :cond_12

    aget-object v4, v2, v1

    .line 194
    invoke-virtual {v4}, Lcg;->a()V

    .line 193
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 196
    :cond_12
    iget-object v1, p0, LFG;->a:[Lcg;

    array-length v2, v1

    :goto_15
    if-ge v0, v2, :cond_1f

    aget-object v3, v1, v0

    .line 198
    :try_start_19
    invoke-virtual {v3}, Ljava/lang/Thread;->join()V
    :try_end_1c
    .catch Ljava/lang/InterruptedException; {:try_start_19 .. :try_end_1c} :catch_48

    .line 196
    :goto_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 203
    :cond_1f
    iget-object v0, p0, LFG;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_29
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_42

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LFL;

    .line 204
    new-instance v2, Ljava/io/File;

    invoke-static {v0}, LFL;->a(LFL;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 205
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_29

    .line 207
    :cond_42
    iget-object v0, p0, LFG;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 208
    return-void

    .line 199
    :catch_48
    move-exception v3

    goto :goto_1c
.end method

.method public declared-synchronized a(III)Z
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 258
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, LFG;->a:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LFL;

    .line 259
    if-eqz v0, :cond_27

    .line 260
    new-instance v1, Ljava/io/File;

    invoke-static {v0}, LFL;->a(LFL;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_60

    .line 261
    iget-object v0, p0, LFG;->a:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    :cond_27
    iget-object v0, p0, LFG;->b:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LFK;

    .line 268
    if-eqz v0, :cond_43

    iget-object v1, p0, LFG;->a:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_43

    invoke-static {v0}, LFK;->c(LFK;)I

    move-result v1

    if-ge v1, p2, :cond_5d

    .line 273
    :cond_43
    if-eqz v0, :cond_4a

    .line 274
    iget-object v1, p0, LFG;->a:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->remove(Ljava/lang/Object;)Z

    .line 277
    :cond_4a
    new-instance v0, LFK;

    invoke-direct {v0, p1, p2, p3}, LFK;-><init>(III)V

    .line 278
    iget-object v1, p0, LFG;->b:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    iget-object v1, p0, LFG;->a:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z
    :try_end_5d
    .catchall {:try_start_1 .. :try_end_5d} :catchall_68

    .line 281
    :cond_5d
    const/4 v0, 0x1

    :goto_5e
    monitor-exit p0

    return v0

    .line 262
    :cond_60
    :try_start_60
    invoke-static {v0}, LFL;->a(LFL;)I
    :try_end_63
    .catchall {:try_start_60 .. :try_end_63} :catchall_68

    move-result v0

    if-lt v0, p2, :cond_27

    .line 263
    const/4 v0, 0x0

    goto :goto_5e

    .line 258
    :catchall_68
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()V
    .registers 2

    .prologue
    .line 214
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, LFG;->a:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 215
    iget-object v0, p0, LFG;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 216
    monitor-exit p0

    return-void

    .line 214
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method
