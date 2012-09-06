.class public final Lcom/google/android/youtube/core/model/proto/h;
.super Lcom/google/protobuf/f;
.source "SourceFile"


# static fields
.field private static final a:Lcom/google/android/youtube/core/model/proto/h;


# instance fields
.field private b:Z

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 2142
    new-instance v0, Lcom/google/android/youtube/core/model/proto/h;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/youtube/core/model/proto/h;-><init>(B)V

    .line 2143
    sput-object v0, Lcom/google/android/youtube/core/model/proto/h;->a:Lcom/google/android/youtube/core/model/proto/h;

    .line 2145
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 1849
    invoke-direct {p0}, Lcom/google/protobuf/f;-><init>()V

    .line 1866
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/youtube/core/model/proto/h;->c:Ljava/lang/String;

    .line 1873
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/youtube/core/model/proto/h;->e:Ljava/lang/String;

    .line 1896
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/youtube/core/model/proto/h;->f:I

    .line 1850
    return-void
.end method

.method private constructor <init>(B)V
    .registers 3
    .parameter

    .prologue
    .line 1852
    invoke-direct {p0}, Lcom/google/protobuf/f;-><init>()V

    .line 1866
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/youtube/core/model/proto/h;->c:Ljava/lang/String;

    .line 1873
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/youtube/core/model/proto/h;->e:Ljava/lang/String;

    .line 1896
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/youtube/core/model/proto/h;->f:I

    .line 1852
    return-void
.end method

.method synthetic constructor <init>(C)V
    .registers 2
    .parameter

    .prologue
    .line 1846
    invoke-direct {p0}, Lcom/google/android/youtube/core/model/proto/h;-><init>()V

    return-void
.end method

.method public static a()Lcom/google/android/youtube/core/model/proto/h;
    .registers 1

    .prologue
    .line 1856
    sget-object v0, Lcom/google/android/youtube/core/model/proto/h;->a:Lcom/google/android/youtube/core/model/proto/h;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/youtube/core/model/proto/h;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 1846
    iput-object p1, p0, Lcom/google/android/youtube/core/model/proto/h;->c:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/youtube/core/model/proto/h;Z)Z
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1846
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/core/model/proto/h;->b:Z

    return v0
.end method

.method static synthetic b(Lcom/google/android/youtube/core/model/proto/h;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 1846
    iput-object p1, p0, Lcom/google/android/youtube/core/model/proto/h;->e:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/google/android/youtube/core/model/proto/h;Z)Z
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1846
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/core/model/proto/h;->d:Z

    return v0
.end method

.method public static g()Lcom/google/android/youtube/core/model/proto/i;
    .registers 1

    .prologue
    .line 1981
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/i;->d()Lcom/google/android/youtube/core/model/proto/i;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 4
    .parameter

    .prologue
    .line 1887
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/h;->j()I

    .line 1888
    iget-boolean v0, p0, Lcom/google/android/youtube/core/model/proto/h;->b:Z

    if-eqz v0, :cond_d

    .line 1889
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/youtube/core/model/proto/h;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->a(ILjava/lang/String;)V

    .line 1891
    :cond_d
    iget-boolean v0, p0, Lcom/google/android/youtube/core/model/proto/h;->d:Z

    if-eqz v0, :cond_17

    .line 1892
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/youtube/core/model/proto/h;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->a(ILjava/lang/String;)V

    .line 1894
    :cond_17
    return-void
.end method

.method public final b()Z
    .registers 2

    .prologue
    .line 1867
    iget-boolean v0, p0, Lcom/google/android/youtube/core/model/proto/h;->b:Z

    return v0
.end method

.method public final c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1868
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/h;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Z
    .registers 2

    .prologue
    .line 1874
    iget-boolean v0, p0, Lcom/google/android/youtube/core/model/proto/h;->d:Z

    return v0
.end method

.method public final e()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1875
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/h;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final f()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 1880
    iget-boolean v1, p0, Lcom/google/android/youtube/core/model/proto/h;->b:Z

    if-nez v1, :cond_6

    .line 1882
    :cond_5
    :goto_5
    return v0

    .line 1881
    :cond_6
    iget-boolean v1, p0, Lcom/google/android/youtube/core/model/proto/h;->d:Z

    if-eqz v1, :cond_5

    .line 1882
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public final j()I
    .registers 4

    .prologue
    .line 1898
    iget v0, p0, Lcom/google/android/youtube/core/model/proto/h;->f:I

    .line 1899
    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    .line 1911
    :goto_5
    return v0

    .line 1901
    :cond_6
    const/4 v0, 0x0

    .line 1902
    iget-boolean v1, p0, Lcom/google/android/youtube/core/model/proto/h;->b:Z

    if-eqz v1, :cond_14

    .line 1903
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/youtube/core/model/proto/h;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->b(ILjava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 1906
    :cond_14
    iget-boolean v1, p0, Lcom/google/android/youtube/core/model/proto/h;->d:Z

    if-eqz v1, :cond_20

    .line 1907
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/youtube/core/model/proto/h;->e:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1910
    :cond_20
    iput v0, p0, Lcom/google/android/youtube/core/model/proto/h;->f:I

    goto :goto_5
.end method
