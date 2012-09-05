.class public final Lcom/google/android/youtube/core/client/w;
.super Lcom/google/android/youtube/core/client/d;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/client/af;


# instance fields
.field private final g:Ljava/util/concurrent/Executor;

.field private final h:I

.field private final i:I

.field private final j:Lcom/google/android/youtube/core/async/ad;

.field private final k:Lcom/google/android/youtube/core/async/ad;

.field private final l:Lcom/google/android/youtube/core/async/ad;

.field private final m:Lcom/google/android/youtube/core/async/ad;

.field private final n:Lcom/google/android/youtube/core/async/ad;

.field private final o:Lcom/google/android/youtube/core/async/ad;

.field private final p:Lcom/google/android/youtube/core/async/ad;


# direct methods
.method private constructor <init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lorg/apache/http/client/HttpClient;Ljava/lang/String;Lcom/google/android/youtube/core/utils/c;IIZZIII)V
    .registers 28
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
    .parameter
    .parameter

    .prologue
    .line 74
    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    invoke-direct/range {v0 .. v14}, Lcom/google/android/youtube/core/client/w;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lorg/apache/http/client/HttpClient;Ljava/lang/String;Lcom/google/android/youtube/core/utils/c;IIZZIIILandroid/graphics/Bitmap$Config;Landroid/graphics/Bitmap$Config;)V

    .line 88
    return-void
.end method

.method private constructor <init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lorg/apache/http/client/HttpClient;Ljava/lang/String;Lcom/google/android/youtube/core/utils/c;IIZZIIILandroid/graphics/Bitmap$Config;Landroid/graphics/Bitmap$Config;)V
    .registers 20
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
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 97
    invoke-direct {p0, p1, p3, p4, p5}, Lcom/google/android/youtube/core/client/d;-><init>(Ljava/util/concurrent/Executor;Lorg/apache/http/client/HttpClient;Ljava/lang/String;Lcom/google/android/youtube/core/utils/c;)V

    .line 98
    const-string v1, "cpu executor can\'t be null"

    invoke-static {p2, v1}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Executor;

    iput-object v1, p0, Lcom/google/android/youtube/core/client/w;->g:Ljava/util/concurrent/Executor;

    .line 101
    move/from16 v0, p11

    iput v0, p0, Lcom/google/android/youtube/core/client/w;->h:I

    .line 102
    move/from16 v0, p12

    iput v0, p0, Lcom/google/android/youtube/core/client/w;->i:I

    .line 104
    new-instance v1, Lcom/google/android/youtube/core/converter/http/aq;

    invoke-direct {v1}, Lcom/google/android/youtube/core/converter/http/aq;-><init>()V

    iget-object v2, p0, Lcom/google/android/youtube/core/client/w;->e:Lcom/google/android/youtube/core/converter/http/ch;

    invoke-virtual {p0, v2, v1}, Lcom/google/android/youtube/core/client/w;->a(Lcom/google/android/youtube/core/converter/a;Lcom/google/android/youtube/core/converter/http/ao;)Lcom/google/android/youtube/core/async/w;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/youtube/core/client/w;->b()Lcom/google/android/youtube/core/cache/e;

    move-result-object v2

    const-wide/32 v3, 0x240c8400

    invoke-virtual {p0, v2, v1, v3, v4}, Lcom/google/android/youtube/core/client/w;->a(Lcom/google/android/youtube/core/cache/b;Lcom/google/android/youtube/core/async/ad;J)Lcom/google/android/youtube/core/async/am;

    move-result-object v1

    iget v2, p0, Lcom/google/android/youtube/core/client/w;->h:I

    invoke-static {v2}, Lcom/google/android/youtube/core/client/w;->a(I)Lcom/google/android/youtube/core/cache/c;

    move-result-object v2

    const-wide/32 v3, 0x6ddd00

    invoke-virtual {p0, v2, v1, v3, v4}, Lcom/google/android/youtube/core/client/w;->a(Lcom/google/android/youtube/core/cache/b;Lcom/google/android/youtube/core/async/ad;J)Lcom/google/android/youtube/core/async/am;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/core/client/w;->j:Lcom/google/android/youtube/core/async/ad;

    .line 107
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p6, p8, v1, v2}, Lcom/google/android/youtube/core/client/w;->a(IZZLandroid/graphics/Bitmap$Config;)Lcom/google/android/youtube/core/async/ad;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/core/client/w;->k:Lcom/google/android/youtube/core/async/ad;

    .line 112
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p7, p9, v1, v2}, Lcom/google/android/youtube/core/client/w;->a(IZZLandroid/graphics/Bitmap$Config;)Lcom/google/android/youtube/core/async/ad;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/core/client/w;->l:Lcom/google/android/youtube/core/async/ad;

    .line 117
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p6, p8, v1, v2}, Lcom/google/android/youtube/core/client/w;->a(IZZLandroid/graphics/Bitmap$Config;)Lcom/google/android/youtube/core/async/ad;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/core/client/w;->m:Lcom/google/android/youtube/core/async/ad;

    .line 122
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p7, p9, v1, v2}, Lcom/google/android/youtube/core/client/w;->a(IZZLandroid/graphics/Bitmap$Config;)Lcom/google/android/youtube/core/async/ad;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/core/client/w;->n:Lcom/google/android/youtube/core/async/ad;

    .line 127
    const/16 v1, 0x1e0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/google/android/youtube/core/client/w;->a(IZZLandroid/graphics/Bitmap$Config;)Lcom/google/android/youtube/core/async/ad;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/core/client/w;->o:Lcom/google/android/youtube/core/async/ad;

    .line 128
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, p10, v1, v2, v3}, Lcom/google/android/youtube/core/client/w;->a(IZZLandroid/graphics/Bitmap$Config;)Lcom/google/android/youtube/core/async/ad;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/core/client/w;->p:Lcom/google/android/youtube/core/async/ad;

    .line 129
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lorg/apache/http/client/HttpClient;Ljava/lang/String;Lcom/google/android/youtube/core/utils/c;IIZZIZ)V
    .registers 25
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
    .parameter

    .prologue
    .line 55
    const/4 v9, 0x1

    if-eqz p11, :cond_1e

    const/16 v11, 0x12c

    :goto_5
    if-eqz p11, :cond_21

    const/16 v12, 0x64

    :goto_9
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v10, p10

    invoke-direct/range {v0 .. v12}, Lcom/google/android/youtube/core/client/w;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lorg/apache/http/client/HttpClient;Ljava/lang/String;Lcom/google/android/youtube/core/utils/c;IIZZIII)V

    .line 67
    return-void

    .line 55
    :cond_1e
    const/16 v11, 0x46

    goto :goto_5

    :cond_21
    const/16 v12, 0x1e

    goto :goto_9
.end method

.method private a(IZZLandroid/graphics/Bitmap$Config;)Lcom/google/android/youtube/core/async/ad;
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 186
    new-instance v0, Lcom/google/android/youtube/core/converter/http/e;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/android/youtube/core/converter/http/e;-><init>(IZZLandroid/graphics/Bitmap$Config;)V

    .line 193
    iget-object v1, p0, Lcom/google/android/youtube/core/client/w;->j:Lcom/google/android/youtube/core/async/ad;

    iget-object v2, p0, Lcom/google/android/youtube/core/client/w;->g:Ljava/util/concurrent/Executor;

    invoke-static {v1, v0, v2}, Lcom/google/android/youtube/core/async/j;->a(Lcom/google/android/youtube/core/async/ad;Lcom/google/android/youtube/core/converter/b;Ljava/util/concurrent/Executor;)Lcom/google/android/youtube/core/async/ad;

    move-result-object v0

    .line 198
    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/client/w;->a(Lcom/google/android/youtube/core/async/ad;)Lcom/google/android/youtube/core/async/b;

    move-result-object v0

    .line 200
    if-nez p3, :cond_14

    .line 210
    :goto_13
    return-object v0

    .line 205
    :cond_14
    iget v1, p0, Lcom/google/android/youtube/core/client/w;->i:I

    invoke-static {v1}, Lcom/google/android/youtube/core/client/w;->a(I)Lcom/google/android/youtube/core/cache/c;

    move-result-object v1

    .line 207
    const-wide/32 v2, 0x6ddd00

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/google/android/youtube/core/client/w;->a(Lcom/google/android/youtube/core/cache/b;Lcom/google/android/youtube/core/async/ad;J)Lcom/google/android/youtube/core/async/am;

    move-result-object v0

    goto :goto_13
.end method


# virtual methods
.method public final a(Landroid/net/Uri;Lcom/google/android/youtube/core/async/g;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 132
    iget-object v0, p0, Lcom/google/android/youtube/core/client/w;->k:Lcom/google/android/youtube/core/async/ad;

    invoke-interface {v0, p1, p2}, Lcom/google/android/youtube/core/async/ad;->a(Ljava/lang/Object;Lcom/google/android/youtube/core/async/g;)V

    .line 133
    return-void
.end method

.method public final b(Landroid/net/Uri;Lcom/google/android/youtube/core/async/g;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 136
    iget-object v0, p0, Lcom/google/android/youtube/core/client/w;->l:Lcom/google/android/youtube/core/async/ad;

    invoke-interface {v0, p1, p2}, Lcom/google/android/youtube/core/async/ad;->a(Ljava/lang/Object;Lcom/google/android/youtube/core/async/g;)V

    .line 137
    return-void
.end method

.method public final c(Landroid/net/Uri;Lcom/google/android/youtube/core/async/g;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 140
    iget-object v0, p0, Lcom/google/android/youtube/core/client/w;->m:Lcom/google/android/youtube/core/async/ad;

    invoke-interface {v0, p1, p2}, Lcom/google/android/youtube/core/async/ad;->a(Ljava/lang/Object;Lcom/google/android/youtube/core/async/g;)V

    .line 141
    return-void
.end method

.method public final d(Landroid/net/Uri;Lcom/google/android/youtube/core/async/g;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 144
    iget-object v0, p0, Lcom/google/android/youtube/core/client/w;->n:Lcom/google/android/youtube/core/async/ad;

    invoke-interface {v0, p1, p2}, Lcom/google/android/youtube/core/async/ad;->a(Ljava/lang/Object;Lcom/google/android/youtube/core/async/g;)V

    .line 145
    return-void
.end method

.method public final e(Landroid/net/Uri;Lcom/google/android/youtube/core/async/g;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 148
    iget-object v0, p0, Lcom/google/android/youtube/core/client/w;->p:Lcom/google/android/youtube/core/async/ad;

    invoke-interface {v0, p1, p2}, Lcom/google/android/youtube/core/async/ad;->a(Ljava/lang/Object;Lcom/google/android/youtube/core/async/g;)V

    .line 149
    return-void
.end method

.method public final f(Landroid/net/Uri;Lcom/google/android/youtube/core/async/g;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 152
    iget-object v0, p0, Lcom/google/android/youtube/core/client/w;->o:Lcom/google/android/youtube/core/async/ad;

    invoke-interface {v0, p1, p2}, Lcom/google/android/youtube/core/async/ad;->a(Ljava/lang/Object;Lcom/google/android/youtube/core/async/g;)V

    .line 153
    return-void
.end method
