.class public Lcom/dropbox/android/widget/V;
.super Ldbxyzptlk/d/a;
.source "panda.py"


# static fields
.field private static final k:Ljava/lang/String;


# instance fields
.field protected final j:Lcom/dropbox/android/util/E;

.field private l:Lcom/dropbox/android/widget/Y;

.field private m:Lcom/dropbox/android/widget/X;

.field private n:Z

.field private final o:Lcom/dropbox/android/widget/quickactions/QuickActionBar;

.field private final p:Landroid/app/Activity;

.field private final q:Landroid/content/Context;

.field private final r:Lcom/dropbox/android/activity/delegate/x;

.field private final s:Lcom/dropbox/android/widget/aa;

.field private t:Ljava/util/concurrent/BlockingQueue;

.field private u:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 40
    const-class v0, Lcom/dropbox/android/widget/V;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dropbox/android/widget/V;->k:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/dropbox/android/widget/quickactions/QuickActionBar;Landroid/app/Activity;Landroid/content/Context;Lcom/dropbox/android/activity/delegate/x;Lcom/dropbox/android/widget/aa;)V
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 216
    const/4 v0, 0x0

    invoke-direct {p0, p2, v2, v0}, Ldbxyzptlk/d/a;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 200
    new-instance v0, Lcom/dropbox/android/widget/Y;

    invoke-direct {v0}, Lcom/dropbox/android/widget/Y;-><init>()V

    iput-object v0, p0, Lcom/dropbox/android/widget/V;->l:Lcom/dropbox/android/widget/Y;

    .line 201
    new-instance v0, Lcom/dropbox/android/widget/X;

    invoke-direct {v0, p0}, Lcom/dropbox/android/widget/X;-><init>(Lcom/dropbox/android/widget/V;)V

    iput-object v0, p0, Lcom/dropbox/android/widget/V;->m:Lcom/dropbox/android/widget/X;

    .line 202
    iput-boolean v1, p0, Lcom/dropbox/android/widget/V;->n:Z

    .line 346
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/dropbox/android/widget/V;->t:Ljava/util/concurrent/BlockingQueue;

    .line 348
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v3, 0x3c

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v6, p0, Lcom/dropbox/android/widget/V;->t:Ljava/util/concurrent/BlockingQueue;

    new-instance v7, Lcom/dropbox/android/widget/Z;

    invoke-direct {v7, v2}, Lcom/dropbox/android/widget/Z;-><init>(Lcom/dropbox/android/widget/W;)V

    move v2, v1

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v0, p0, Lcom/dropbox/android/widget/V;->u:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 217
    iput-object p1, p0, Lcom/dropbox/android/widget/V;->o:Lcom/dropbox/android/widget/quickactions/QuickActionBar;

    .line 218
    iput-object p2, p0, Lcom/dropbox/android/widget/V;->p:Landroid/app/Activity;

    .line 219
    iput-object p3, p0, Lcom/dropbox/android/widget/V;->q:Landroid/content/Context;

    .line 220
    iput-object p4, p0, Lcom/dropbox/android/widget/V;->r:Lcom/dropbox/android/activity/delegate/x;

    .line 221
    iput-object p5, p0, Lcom/dropbox/android/widget/V;->s:Lcom/dropbox/android/widget/aa;

    .line 222
    new-instance v0, Lcom/dropbox/android/util/E;

    invoke-direct {v0}, Lcom/dropbox/android/util/E;-><init>()V

    iput-object v0, p0, Lcom/dropbox/android/widget/V;->j:Lcom/dropbox/android/util/E;

    .line 223
    return-void
.end method

.method static synthetic a(Lcom/dropbox/android/widget/V;)Z
    .registers 2
    .parameter

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/dropbox/android/widget/V;->n:Z

    return v0
.end method

.method private d()V
    .registers 2

    .prologue
    .line 285
    iget-object v0, p0, Lcom/dropbox/android/widget/V;->o:Lcom/dropbox/android/widget/quickactions/QuickActionBar;

    if-eqz v0, :cond_9

    .line 286
    iget-object v0, p0, Lcom/dropbox/android/widget/V;->o:Lcom/dropbox/android/widget/quickactions/QuickActionBar;

    invoke-virtual {v0}, Lcom/dropbox/android/widget/quickactions/QuickActionBar;->c()V

    .line 288
    :cond_9
    return-void
.end method

.method private d(Landroid/database/Cursor;)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, -0x1

    .line 291
    if-eqz p1, :cond_1c

    .line 292
    invoke-interface {p1, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 293
    :cond_6
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 294
    invoke-static {p1}, Lcom/dropbox/android/widget/S;->a(Landroid/database/Cursor;)Lcom/dropbox/android/widget/S;

    move-result-object v0

    sget-object v1, Lcom/dropbox/android/widget/S;->e:Lcom/dropbox/android/widget/S;

    if-ne v0, v1, :cond_6

    .line 295
    iget-object v0, p0, Lcom/dropbox/android/widget/V;->m:Lcom/dropbox/android/widget/X;

    invoke-static {v0, p1}, Lcom/dropbox/android/widget/X;->a(Lcom/dropbox/android/widget/X;Landroid/database/Cursor;)V

    .line 299
    :cond_19
    invoke-interface {p1, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 301
    :cond_1c
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 307
    new-instance v0, Lcom/dropbox/android/widget/FileItemView;

    iget-object v1, p0, Lcom/dropbox/android/widget/V;->s:Lcom/dropbox/android/widget/aa;

    iget-object v2, p0, Lcom/dropbox/android/widget/V;->j:Lcom/dropbox/android/util/E;

    invoke-direct {v0, p1, v1, v2}, Lcom/dropbox/android/widget/FileItemView;-><init>(Landroid/content/Context;Lcom/dropbox/android/widget/aa;Lcom/dropbox/android/util/E;)V

    .line 308
    return-object v0
.end method

.method public final a(Landroid/database/Cursor;)V
    .registers 2
    .parameter

    .prologue
    .line 264
    invoke-direct {p0}, Lcom/dropbox/android/widget/V;->d()V

    .line 265
    invoke-direct {p0, p1}, Lcom/dropbox/android/widget/V;->d(Landroid/database/Cursor;)V

    .line 266
    invoke-super {p0, p1}, Ldbxyzptlk/d/a;->a(Landroid/database/Cursor;)V

    .line 267
    return-void
.end method

.method public final a(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 13
    .parameter
    .parameter
    .parameter

    .prologue
    .line 257
    move-object v0, p1

    check-cast v0, Lcom/dropbox/android/widget/FileItemView;

    .line 258
    iget-object v2, p0, Lcom/dropbox/android/widget/V;->o:Lcom/dropbox/android/widget/quickactions/QuickActionBar;

    iget-object v3, p0, Lcom/dropbox/android/widget/V;->p:Landroid/app/Activity;

    iget-object v4, p0, Lcom/dropbox/android/widget/V;->q:Landroid/content/Context;

    iget-object v5, p0, Lcom/dropbox/android/widget/V;->r:Lcom/dropbox/android/activity/delegate/x;

    iget-object v6, p0, Lcom/dropbox/android/widget/V;->l:Lcom/dropbox/android/widget/Y;

    iget-object v7, p0, Lcom/dropbox/android/widget/V;->m:Lcom/dropbox/android/widget/X;

    iget-object v8, p0, Lcom/dropbox/android/widget/V;->u:Ljava/util/concurrent/ThreadPoolExecutor;

    move-object v1, p3

    invoke-virtual/range {v0 .. v8}, Lcom/dropbox/android/widget/FileItemView;->a(Landroid/database/Cursor;Lcom/dropbox/android/widget/quickactions/QuickActionBar;Landroid/app/Activity;Landroid/content/Context;Lcom/dropbox/android/activity/delegate/x;Lcom/dropbox/android/widget/Y;Lcom/dropbox/android/widget/X;Ljava/util/concurrent/ThreadPoolExecutor;)V

    .line 260
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 226
    iget-object v0, p0, Lcom/dropbox/android/widget/V;->l:Lcom/dropbox/android/widget/Y;

    invoke-static {v0, p1}, Lcom/dropbox/android/widget/Y;->a(Lcom/dropbox/android/widget/Y;Ljava/lang/String;)V

    .line 227
    return-void
.end method

.method public final a(Z)V
    .registers 2
    .parameter

    .prologue
    .line 230
    iput-boolean p1, p0, Lcom/dropbox/android/widget/V;->n:Z

    .line 231
    return-void
.end method

.method public final b(Landroid/database/Cursor;)Landroid/database/Cursor;
    .registers 3
    .parameter

    .prologue
    .line 271
    invoke-direct {p0}, Lcom/dropbox/android/widget/V;->d()V

    .line 272
    invoke-direct {p0, p1}, Lcom/dropbox/android/widget/V;->d(Landroid/database/Cursor;)V

    .line 273
    invoke-super {p0, p1}, Ldbxyzptlk/d/a;->b(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected final b()V
    .registers 3

    .prologue
    .line 278
    sget-object v0, Lcom/dropbox/android/widget/V;->k:Ljava/lang/String;

    const-string v1, "onContentChanged"

    invoke-static {v0, v1}, Ldbxyzptlk/h/f;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    invoke-direct {p0}, Lcom/dropbox/android/widget/V;->d()V

    .line 280
    invoke-super {p0}, Ldbxyzptlk/d/a;->b()V

    .line 282
    return-void
.end method

.method public final c()Z
    .registers 3

    .prologue
    .line 323
    iget-object v0, p0, Lcom/dropbox/android/widget/V;->c:Landroid/database/Cursor;

    if-eqz v0, :cond_1e

    .line 324
    iget-object v0, p0, Lcom/dropbox/android/widget/V;->c:Landroid/database/Cursor;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 325
    :cond_a
    iget-object v0, p0, Lcom/dropbox/android/widget/V;->c:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 326
    iget-object v0, p0, Lcom/dropbox/android/widget/V;->c:Landroid/database/Cursor;

    invoke-static {v0}, Lcom/dropbox/android/widget/S;->a(Landroid/database/Cursor;)Lcom/dropbox/android/widget/S;

    move-result-object v0

    .line 327
    sget-object v1, Lcom/dropbox/android/widget/S;->a:Lcom/dropbox/android/widget/S;

    if-ne v0, v1, :cond_a

    .line 328
    const/4 v0, 0x1

    .line 333
    :goto_1d
    return v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method protected finalize()V
    .registers 2

    .prologue
    .line 357
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/android/widget/V;->u:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_9

    .line 359
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 361
    return-void

    .line 359
    :catchall_9
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 315
    iget-object v0, p0, Lcom/dropbox/android/widget/V;->c:Landroid/database/Cursor;

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/dropbox/android/widget/V;->a:Z

    if-nez v0, :cond_a

    .line 316
    :cond_8
    const/4 v0, 0x0

    .line 319
    :goto_9
    return v0

    :cond_a
    invoke-super {p0}, Ldbxyzptlk/d/a;->isEmpty()Z

    move-result v0

    goto :goto_9
.end method

.method public isEnabled(I)Z
    .registers 7
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 235
    invoke-virtual {p0}, Lcom/dropbox/android/widget/V;->a()Landroid/database/Cursor;

    move-result-object v2

    .line 236
    invoke-interface {v2, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 238
    invoke-static {v2}, Lcom/dropbox/android/widget/S;->a(Landroid/database/Cursor;)Lcom/dropbox/android/widget/S;

    move-result-object v3

    .line 239
    sget-object v4, Lcom/dropbox/android/widget/W;->a:[I

    invoke-virtual {v3}, Lcom/dropbox/android/widget/S;->ordinal()I

    move-result v3

    aget v3, v4, v3

    packed-switch v3, :pswitch_data_3a

    move v0, v1

    .line 251
    :cond_19
    :goto_19
    :pswitch_19
    return v0

    .line 242
    :pswitch_1a
    invoke-static {v2}, Lcom/dropbox/android/provider/B;->a(Landroid/database/Cursor;)Lcom/dropbox/android/filemanager/LocalEntry;

    move-result-object v2

    .line 243
    iget-object v3, p0, Lcom/dropbox/android/widget/V;->s:Lcom/dropbox/android/widget/aa;

    sget-object v4, Lcom/dropbox/android/widget/aa;->b:Lcom/dropbox/android/widget/aa;

    if-ne v3, v4, :cond_28

    iget-boolean v3, v2, Lcom/dropbox/android/filemanager/LocalEntry;->k:Z

    if-eqz v3, :cond_32

    :cond_28
    invoke-static {}, Lcom/dropbox/android/filemanager/v;->a()Lcom/dropbox/android/filemanager/v;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/dropbox/android/filemanager/v;->c(Lcom/dropbox/android/filemanager/LocalEntry;)Z

    move-result v2

    if-nez v2, :cond_37

    :cond_32
    move v2, v0

    .line 245
    :goto_33
    if-eqz v2, :cond_19

    move v0, v1

    goto :goto_19

    :cond_37
    move v2, v1

    .line 243
    goto :goto_33

    .line 239
    nop

    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_1a
        :pswitch_19
        :pswitch_19
        :pswitch_19
    .end packed-switch
.end method
