.class public final Lcom/google/android/youtube/core/model/proto/b;
.super Lcom/google/protobuf/f;
.source "SourceFile"


# static fields
.field private static final a:Lcom/google/android/youtube/core/model/proto/b;


# instance fields
.field private b:Z

.field private c:Lcom/google/android/youtube/core/model/proto/c;

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:Ljava/util/List;

.field private g:Ljava/util/List;

.field private h:Ljava/util/List;

.field private i:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 1838
    new-instance v0, Lcom/google/android/youtube/core/model/proto/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/youtube/core/model/proto/b;-><init>(B)V

    .line 1839
    sput-object v0, Lcom/google/android/youtube/core/model/proto/b;->a:Lcom/google/android/youtube/core/model/proto/b;

    invoke-static {}, Lcom/google/android/youtube/core/model/proto/c;->a()Lcom/google/android/youtube/core/model/proto/c;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/youtube/core/model/proto/b;->c:Lcom/google/android/youtube/core/model/proto/c;

    .line 1841
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 604
    invoke-direct {p0}, Lcom/google/protobuf/f;-><init>()V

    .line 1280
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/youtube/core/model/proto/b;->e:Ljava/lang/String;

    .line 1286
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/proto/b;->f:Ljava/util/List;

    .line 1298
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/proto/b;->g:Ljava/util/List;

    .line 1310
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/proto/b;->h:Ljava/util/List;

    .line 1358
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/youtube/core/model/proto/b;->i:I

    .line 605
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/c;->a()Lcom/google/android/youtube/core/model/proto/c;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/proto/b;->c:Lcom/google/android/youtube/core/model/proto/c;

    .line 606
    return-void
.end method

.method private constructor <init>(B)V
    .registers 3
    .parameter

    .prologue
    .line 607
    invoke-direct {p0}, Lcom/google/protobuf/f;-><init>()V

    .line 1280
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/youtube/core/model/proto/b;->e:Ljava/lang/String;

    .line 1286
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/proto/b;->f:Ljava/util/List;

    .line 1298
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/proto/b;->g:Ljava/util/List;

    .line 1310
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/proto/b;->h:Ljava/util/List;

    .line 1358
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/youtube/core/model/proto/b;->i:I

    .line 607
    return-void
.end method

.method synthetic constructor <init>(C)V
    .registers 2
    .parameter

    .prologue
    .line 601
    invoke-direct {p0}, Lcom/google/android/youtube/core/model/proto/b;-><init>()V

    return-void
.end method

.method public static a()Lcom/google/android/youtube/core/model/proto/b;
    .registers 1

    .prologue
    .line 611
    sget-object v0, Lcom/google/android/youtube/core/model/proto/b;->a:Lcom/google/android/youtube/core/model/proto/b;

    return-object v0
.end method

.method public static a(Ljava/io/InputStream;)Lcom/google/android/youtube/core/model/proto/b;
    .registers 2
    .parameter

    .prologue
    .line 1413
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/e;->a()Lcom/google/android/youtube/core/model/proto/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/youtube/core/model/proto/e;->a(Ljava/io/InputStream;)Lcom/google/protobuf/b;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/proto/e;

    invoke-static {v0}, Lcom/google/android/youtube/core/model/proto/e;->a(Lcom/google/android/youtube/core/model/proto/e;)Lcom/google/android/youtube/core/model/proto/b;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/youtube/core/model/proto/b;Lcom/google/android/youtube/core/model/proto/c;)Lcom/google/android/youtube/core/model/proto/c;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 601
    iput-object p1, p0, Lcom/google/android/youtube/core/model/proto/b;->c:Lcom/google/android/youtube/core/model/proto/c;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/youtube/core/model/proto/b;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 601
    iput-object p1, p0, Lcom/google/android/youtube/core/model/proto/b;->e:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/youtube/core/model/proto/b;)Ljava/util/List;
    .registers 2
    .parameter

    .prologue
    .line 601
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/b;->f:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/youtube/core/model/proto/b;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 601
    iput-object p1, p0, Lcom/google/android/youtube/core/model/proto/b;->f:Ljava/util/List;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/youtube/core/model/proto/b;Z)Z
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 601
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/core/model/proto/b;->b:Z

    return v0
.end method

.method static synthetic b(Lcom/google/android/youtube/core/model/proto/b;)Ljava/util/List;
    .registers 2
    .parameter

    .prologue
    .line 601
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/b;->g:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/youtube/core/model/proto/b;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 601
    iput-object p1, p0, Lcom/google/android/youtube/core/model/proto/b;->g:Ljava/util/List;

    return-object p1
.end method

.method static synthetic b(Lcom/google/android/youtube/core/model/proto/b;Z)Z
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 601
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/core/model/proto/b;->d:Z

    return v0
.end method

.method static synthetic c(Lcom/google/android/youtube/core/model/proto/b;)Ljava/util/List;
    .registers 2
    .parameter

    .prologue
    .line 601
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/b;->h:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/youtube/core/model/proto/b;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 601
    iput-object p1, p0, Lcom/google/android/youtube/core/model/proto/b;->h:Ljava/util/List;

    return-object p1
.end method

.method static synthetic d(Lcom/google/android/youtube/core/model/proto/b;)Lcom/google/android/youtube/core/model/proto/c;
    .registers 2
    .parameter

    .prologue
    .line 601
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/b;->c:Lcom/google/android/youtube/core/model/proto/c;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 5
    .parameter

    .prologue
    .line 1340
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/b;->j()I

    .line 1341
    iget-boolean v0, p0, Lcom/google/android/youtube/core/model/proto/b;->b:Z

    if-eqz v0, :cond_d

    .line 1342
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/youtube/core/model/proto/b;->c:Lcom/google/android/youtube/core/model/proto/c;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->a(ILcom/google/protobuf/j;)V

    .line 1344
    :cond_d
    iget-boolean v0, p0, Lcom/google/android/youtube/core/model/proto/b;->d:Z

    if-eqz v0, :cond_17

    .line 1345
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/youtube/core/model/proto/b;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->a(ILjava/lang/String;)V

    .line 1347
    :cond_17
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/b;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/proto/f;

    .line 1348
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->a(ILcom/google/protobuf/j;)V

    goto :goto_1d

    .line 1350
    :cond_2e
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/b;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_34
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_45

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/proto/n;

    .line 1351
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->a(ILcom/google/protobuf/j;)V

    goto :goto_34

    .line 1353
    :cond_45
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/b;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/proto/n;

    .line 1354
    const/4 v2, 0x5

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->a(ILcom/google/protobuf/j;)V

    goto :goto_4b

    .line 1356
    :cond_5c
    return-void
.end method

.method public final b()Z
    .registers 2

    .prologue
    .line 1274
    iget-boolean v0, p0, Lcom/google/android/youtube/core/model/proto/b;->b:Z

    return v0
.end method

.method public final c()Lcom/google/android/youtube/core/model/proto/c;
    .registers 2

    .prologue
    .line 1275
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/b;->c:Lcom/google/android/youtube/core/model/proto/c;

    return-object v0
.end method

.method public final d()Z
    .registers 2

    .prologue
    .line 1281
    iget-boolean v0, p0, Lcom/google/android/youtube/core/model/proto/b;->d:Z

    return v0
.end method

.method public final e()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1282
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/b;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final f()Ljava/util/List;
    .registers 2

    .prologue
    .line 1289
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/b;->f:Ljava/util/List;

    return-object v0
.end method

.method public final g()Ljava/util/List;
    .registers 2

    .prologue
    .line 1301
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/b;->g:Ljava/util/List;

    return-object v0
.end method

.method public final h()Ljava/util/List;
    .registers 2

    .prologue
    .line 1313
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/b;->h:Ljava/util/List;

    return-object v0
.end method

.method public final i()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 1324
    iget-boolean v0, p0, Lcom/google/android/youtube/core/model/proto/b;->b:Z

    if-nez v0, :cond_7

    move v0, v1

    .line 1335
    :goto_6
    return v0

    .line 1325
    :cond_7
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/b;->c:Lcom/google/android/youtube/core/model/proto/c;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/proto/c;->h()Z

    move-result v0

    if-nez v0, :cond_11

    move v0, v1

    goto :goto_6

    .line 1326
    :cond_11
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/b;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/proto/f;

    .line 1327
    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/proto/f;->f()Z

    move-result v0

    if-nez v0, :cond_17

    move v0, v1

    goto :goto_6

    .line 1329
    :cond_2b
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/b;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_31
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_45

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/proto/n;

    .line 1330
    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/proto/n;->u()Z

    move-result v0

    if-nez v0, :cond_31

    move v0, v1

    goto :goto_6

    .line 1332
    :cond_45
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/b;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/proto/n;

    .line 1333
    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/proto/n;->u()Z

    move-result v0

    if-nez v0, :cond_4b

    move v0, v1

    goto :goto_6

    .line 1335
    :cond_5f
    const/4 v0, 0x1

    goto :goto_6
.end method

.method public final j()I
    .registers 5

    .prologue
    .line 1360
    iget v1, p0, Lcom/google/android/youtube/core/model/proto/b;->i:I

    .line 1361
    const/4 v0, -0x1

    if-eq v1, v0, :cond_6

    .line 1385
    :goto_5
    return v1

    .line 1363
    :cond_6
    const/4 v0, 0x0

    .line 1364
    iget-boolean v1, p0, Lcom/google/android/youtube/core/model/proto/b;->b:Z

    if-eqz v1, :cond_14

    .line 1365
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/youtube/core/model/proto/b;->c:Lcom/google/android/youtube/core/model/proto/c;

    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->b(ILcom/google/protobuf/j;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 1368
    :cond_14
    iget-boolean v1, p0, Lcom/google/android/youtube/core/model/proto/b;->d:Z

    if-eqz v1, :cond_20

    .line 1369
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/youtube/core/model/proto/b;->e:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1372
    :cond_20
    iget-object v1, p0, Lcom/google/android/youtube/core/model/proto/b;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_27
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/proto/f;

    .line 1373
    const/4 v3, 0x3

    invoke-static {v3, v0}, Lcom/google/protobuf/CodedOutputStream;->b(ILcom/google/protobuf/j;)I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_27

    .line 1376
    :cond_3b
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/b;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_41
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_54

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/proto/n;

    .line 1377
    const/4 v3, 0x4

    invoke-static {v3, v0}, Lcom/google/protobuf/CodedOutputStream;->b(ILcom/google/protobuf/j;)I

    move-result v0

    add-int/2addr v1, v0

    goto :goto_41

    .line 1380
    :cond_54
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/b;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/proto/n;

    .line 1381
    const/4 v3, 0x5

    invoke-static {v3, v0}, Lcom/google/protobuf/CodedOutputStream;->b(ILcom/google/protobuf/j;)I

    move-result v0

    add-int/2addr v1, v0

    goto :goto_5a

    .line 1384
    :cond_6d
    iput v1, p0, Lcom/google/android/youtube/core/model/proto/b;->i:I

    goto :goto_5
.end method
