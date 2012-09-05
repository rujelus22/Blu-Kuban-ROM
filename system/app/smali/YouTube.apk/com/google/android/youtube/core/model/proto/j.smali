.class public final Lcom/google/android/youtube/core/model/proto/j;
.super Lcom/google/protobuf/f;
.source "SourceFile"


# static fields
.field private static final a:Lcom/google/android/youtube/core/model/proto/j;


# instance fields
.field private b:Z

.field private c:Ljava/lang/String;

.field private d:Ljava/util/List;

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 2481
    new-instance v0, Lcom/google/android/youtube/core/model/proto/j;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/youtube/core/model/proto/j;-><init>(C)V

    sput-object v0, Lcom/google/android/youtube/core/model/proto/j;->a:Lcom/google/android/youtube/core/model/proto/j;

    .line 2482
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/a;->a()V

    .line 2483
    sget-object v0, Lcom/google/android/youtube/core/model/proto/j;->a:Lcom/google/android/youtube/core/model/proto/j;

    .line 2484
    return-void
.end method

.method synthetic constructor <init>()V
    .registers 2

    .prologue
    .line 2150
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/model/proto/j;-><init>(B)V

    return-void
.end method

.method private constructor <init>(B)V
    .registers 3
    .parameter

    .prologue
    .line 2153
    invoke-direct {p0}, Lcom/google/protobuf/f;-><init>()V

    .line 2170
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/youtube/core/model/proto/j;->c:Ljava/lang/String;

    .line 2176
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/proto/j;->d:Ljava/util/List;

    .line 2204
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/youtube/core/model/proto/j;->e:I

    .line 2154
    return-void
.end method

.method private constructor <init>(C)V
    .registers 3
    .parameter

    .prologue
    .line 2156
    invoke-direct {p0}, Lcom/google/protobuf/f;-><init>()V

    .line 2170
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/youtube/core/model/proto/j;->c:Ljava/lang/String;

    .line 2176
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/proto/j;->d:Ljava/util/List;

    .line 2204
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/youtube/core/model/proto/j;->e:I

    .line 2156
    return-void
.end method

.method public static a()Lcom/google/android/youtube/core/model/proto/j;
    .registers 1

    .prologue
    .line 2160
    sget-object v0, Lcom/google/android/youtube/core/model/proto/j;->a:Lcom/google/android/youtube/core/model/proto/j;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/youtube/core/model/proto/j;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 2150
    iput-object p1, p0, Lcom/google/android/youtube/core/model/proto/j;->c:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/youtube/core/model/proto/j;)Ljava/util/List;
    .registers 2
    .parameter

    .prologue
    .line 2150
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/j;->d:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/youtube/core/model/proto/j;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 2150
    iput-object p1, p0, Lcom/google/android/youtube/core/model/proto/j;->d:Ljava/util/List;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/youtube/core/model/proto/j;Z)Z
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 2150
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/core/model/proto/j;->b:Z

    return v0
.end method

.method public static e()Lcom/google/android/youtube/core/model/proto/k;
    .registers 1

    .prologue
    .line 2294
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/k;->d()Lcom/google/android/youtube/core/model/proto/k;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 5
    .parameter

    .prologue
    .line 2195
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/j;->j()I

    .line 2196
    iget-boolean v0, p0, Lcom/google/android/youtube/core/model/proto/j;->b:Z

    if-eqz v0, :cond_d

    .line 2197
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/youtube/core/model/proto/j;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->a(ILjava/lang/String;)V

    .line 2199
    :cond_d
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/j;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2200
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->a(ILjava/lang/String;)V

    goto :goto_13

    .line 2202
    :cond_24
    return-void
.end method

.method public final b()Z
    .registers 2

    .prologue
    .line 2171
    iget-boolean v0, p0, Lcom/google/android/youtube/core/model/proto/j;->b:Z

    return v0
.end method

.method public final c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2172
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/j;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Z
    .registers 2

    .prologue
    .line 2189
    iget-boolean v0, p0, Lcom/google/android/youtube/core/model/proto/j;->b:Z

    if-nez v0, :cond_6

    const/4 v0, 0x0

    .line 2190
    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public final j()I
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 2206
    iget v0, p0, Lcom/google/android/youtube/core/model/proto/j;->e:I

    .line 2207
    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    .line 2224
    :goto_6
    return v0

    .line 2210
    :cond_7
    iget-boolean v0, p0, Lcom/google/android/youtube/core/model/proto/j;->b:Z

    if-eqz v0, :cond_3b

    .line 2211
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/youtube/core/model/proto/j;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->b(ILjava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    move v1, v0

    .line 2216
    :goto_15
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/j;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2217
    invoke-static {v0}, Lcom/google/protobuf/CodedOutputStream;->a(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v2, v0

    goto :goto_1b

    .line 2220
    :cond_2d
    add-int v0, v1, v2

    .line 2221
    iget-object v1, p0, Lcom/google/android/youtube/core/model/proto/j;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 2223
    iput v0, p0, Lcom/google/android/youtube/core/model/proto/j;->e:I

    goto :goto_6

    :cond_3b
    move v1, v2

    goto :goto_15
.end method
