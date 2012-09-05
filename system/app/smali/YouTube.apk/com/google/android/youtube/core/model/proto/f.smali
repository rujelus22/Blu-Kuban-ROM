.class public final Lcom/google/android/youtube/core/model/proto/f;
.super Lcom/google/protobuf/f;
.source "SourceFile"


# static fields
.field private static final a:Lcom/google/android/youtube/core/model/proto/f;


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
    .line 1262
    new-instance v0, Lcom/google/android/youtube/core/model/proto/f;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/youtube/core/model/proto/f;-><init>(C)V

    sput-object v0, Lcom/google/android/youtube/core/model/proto/f;->a:Lcom/google/android/youtube/core/model/proto/f;

    .line 1263
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/a;->a()V

    .line 1264
    sget-object v0, Lcom/google/android/youtube/core/model/proto/f;->a:Lcom/google/android/youtube/core/model/proto/f;

    .line 1265
    return-void
.end method

.method synthetic constructor <init>()V
    .registers 2

    .prologue
    .line 965
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/model/proto/f;-><init>(B)V

    return-void
.end method

.method private constructor <init>(B)V
    .registers 3
    .parameter

    .prologue
    .line 968
    invoke-direct {p0}, Lcom/google/protobuf/f;-><init>()V

    .line 986
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/youtube/core/model/proto/f;->c:Ljava/lang/String;

    .line 993
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/youtube/core/model/proto/f;->e:Ljava/lang/String;

    .line 1016
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/youtube/core/model/proto/f;->f:I

    .line 969
    return-void
.end method

.method private constructor <init>(C)V
    .registers 3
    .parameter

    .prologue
    .line 971
    invoke-direct {p0}, Lcom/google/protobuf/f;-><init>()V

    .line 986
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/youtube/core/model/proto/f;->c:Ljava/lang/String;

    .line 993
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/youtube/core/model/proto/f;->e:Ljava/lang/String;

    .line 1016
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/youtube/core/model/proto/f;->f:I

    .line 971
    return-void
.end method

.method public static a()Lcom/google/android/youtube/core/model/proto/f;
    .registers 1

    .prologue
    .line 976
    sget-object v0, Lcom/google/android/youtube/core/model/proto/f;->a:Lcom/google/android/youtube/core/model/proto/f;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/youtube/core/model/proto/f;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 965
    iput-object p1, p0, Lcom/google/android/youtube/core/model/proto/f;->c:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/youtube/core/model/proto/f;Z)Z
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 965
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/core/model/proto/f;->b:Z

    return v0
.end method

.method static synthetic b(Lcom/google/android/youtube/core/model/proto/f;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 965
    iput-object p1, p0, Lcom/google/android/youtube/core/model/proto/f;->e:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/google/android/youtube/core/model/proto/f;Z)Z
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 965
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/core/model/proto/f;->d:Z

    return v0
.end method

.method public static g()Lcom/google/android/youtube/core/model/proto/g;
    .registers 1

    .prologue
    .line 1101
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/g;->d()Lcom/google/android/youtube/core/model/proto/g;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 4
    .parameter

    .prologue
    .line 1007
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/f;->j()I

    .line 1008
    iget-boolean v0, p0, Lcom/google/android/youtube/core/model/proto/f;->b:Z

    if-eqz v0, :cond_d

    .line 1009
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/youtube/core/model/proto/f;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->a(ILjava/lang/String;)V

    .line 1011
    :cond_d
    iget-boolean v0, p0, Lcom/google/android/youtube/core/model/proto/f;->d:Z

    if-eqz v0, :cond_17

    .line 1012
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/youtube/core/model/proto/f;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->a(ILjava/lang/String;)V

    .line 1014
    :cond_17
    return-void
.end method

.method public final b()Z
    .registers 2

    .prologue
    .line 987
    iget-boolean v0, p0, Lcom/google/android/youtube/core/model/proto/f;->b:Z

    return v0
.end method

.method public final c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 988
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/f;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Z
    .registers 2

    .prologue
    .line 994
    iget-boolean v0, p0, Lcom/google/android/youtube/core/model/proto/f;->d:Z

    return v0
.end method

.method public final e()Ljava/lang/String;
    .registers 2

    .prologue
    .line 995
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/f;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final f()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 1000
    iget-boolean v1, p0, Lcom/google/android/youtube/core/model/proto/f;->b:Z

    if-nez v1, :cond_6

    .line 1002
    :cond_5
    :goto_5
    return v0

    .line 1001
    :cond_6
    iget-boolean v1, p0, Lcom/google/android/youtube/core/model/proto/f;->d:Z

    if-eqz v1, :cond_5

    .line 1002
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public final j()I
    .registers 4

    .prologue
    .line 1018
    iget v0, p0, Lcom/google/android/youtube/core/model/proto/f;->f:I

    .line 1019
    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    .line 1031
    :goto_5
    return v0

    .line 1021
    :cond_6
    const/4 v0, 0x0

    .line 1022
    iget-boolean v1, p0, Lcom/google/android/youtube/core/model/proto/f;->b:Z

    if-eqz v1, :cond_14

    .line 1023
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/youtube/core/model/proto/f;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->b(ILjava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 1026
    :cond_14
    iget-boolean v1, p0, Lcom/google/android/youtube/core/model/proto/f;->d:Z

    if-eqz v1, :cond_20

    .line 1027
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/youtube/core/model/proto/f;->e:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1030
    :cond_20
    iput v0, p0, Lcom/google/android/youtube/core/model/proto/f;->f:I

    goto :goto_5
.end method
