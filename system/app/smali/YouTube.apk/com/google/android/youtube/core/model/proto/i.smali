.class public final Lcom/google/android/youtube/core/model/proto/i;
.super Lcom/google/protobuf/g;
.source "SourceFile"


# instance fields
.field private a:Lcom/google/android/youtube/core/model/proto/h;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 1994
    invoke-direct {p0}, Lcom/google/protobuf/g;-><init>()V

    return-void
.end method

.method private c(Lcom/google/protobuf/d;Lcom/google/protobuf/e;)Lcom/google/android/youtube/core/model/proto/i;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 2073
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/d;->a()I

    move-result v0

    .line 2074
    sparse-switch v0, :sswitch_data_1e

    .line 2078
    invoke-virtual {p1, v0}, Lcom/google/protobuf/d;->b(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2079
    :sswitch_d
    return-object p0

    .line 2084
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/d;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/model/proto/i;->a(Ljava/lang/String;)Lcom/google/android/youtube/core/model/proto/i;

    goto :goto_0

    .line 2088
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/d;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/model/proto/i;->b(Ljava/lang/String;)Lcom/google/android/youtube/core/model/proto/i;

    goto :goto_0

    .line 2074
    :sswitch_data_1e
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_16
    .end sparse-switch
.end method

.method static synthetic d()Lcom/google/android/youtube/core/model/proto/i;
    .registers 1

    .prologue
    .line 1988
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/i;->e()Lcom/google/android/youtube/core/model/proto/i;

    move-result-object v0

    return-object v0
.end method

.method private static e()Lcom/google/android/youtube/core/model/proto/i;
    .registers 3

    .prologue
    .line 1997
    new-instance v0, Lcom/google/android/youtube/core/model/proto/i;

    invoke-direct {v0}, Lcom/google/android/youtube/core/model/proto/i;-><init>()V

    .line 1998
    new-instance v1, Lcom/google/android/youtube/core/model/proto/h;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/youtube/core/model/proto/h;-><init>(C)V

    iput-object v1, v0, Lcom/google/android/youtube/core/model/proto/i;->a:Lcom/google/android/youtube/core/model/proto/h;

    .line 1999
    return-object v0
.end method

.method private f()Lcom/google/android/youtube/core/model/proto/i;
    .registers 4

    .prologue
    .line 2018
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/i;->e()Lcom/google/android/youtube/core/model/proto/i;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/proto/i;->a:Lcom/google/android/youtube/core/model/proto/h;

    invoke-static {}, Lcom/google/android/youtube/core/model/proto/h;->a()Lcom/google/android/youtube/core/model/proto/h;

    move-result-object v2

    if-eq v1, v2, :cond_26

    invoke-virtual {v1}, Lcom/google/android/youtube/core/model/proto/h;->b()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-virtual {v1}, Lcom/google/android/youtube/core/model/proto/h;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/youtube/core/model/proto/i;->a(Ljava/lang/String;)Lcom/google/android/youtube/core/model/proto/i;

    :cond_19
    invoke-virtual {v1}, Lcom/google/android/youtube/core/model/proto/h;->d()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-virtual {v1}, Lcom/google/android/youtube/core/model/proto/h;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/proto/i;->b(Ljava/lang/String;)Lcom/google/android/youtube/core/model/proto/i;

    :cond_26
    return-object v0
.end method


# virtual methods
.method public final a()Lcom/google/android/youtube/core/model/proto/h;
    .registers 3

    .prologue
    .line 2030
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/i;->a:Lcom/google/android/youtube/core/model/proto/h;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/i;->a:Lcom/google/android/youtube/core/model/proto/h;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/proto/h;->f()Z

    move-result v0

    if-nez v0, :cond_13

    .line 2031
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/i;->a:Lcom/google/android/youtube/core/model/proto/h;

    invoke-static {v0}, Lcom/google/android/youtube/core/model/proto/i;->a(Lcom/google/protobuf/j;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 2033
    :cond_13
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/i;->a:Lcom/google/android/youtube/core/model/proto/h;

    if-nez v0, :cond_1f

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "build() has already been called on this Builder."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/i;->a:Lcom/google/android/youtube/core/model/proto/h;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/youtube/core/model/proto/i;->a:Lcom/google/android/youtube/core/model/proto/h;

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Lcom/google/android/youtube/core/model/proto/i;
    .registers 4
    .parameter

    .prologue
    .line 2104
    if-nez p1, :cond_8

    .line 2105
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2107
    :cond_8
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/i;->a:Lcom/google/android/youtube/core/model/proto/h;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/model/proto/h;->a(Lcom/google/android/youtube/core/model/proto/h;Z)Z

    .line 2108
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/i;->a:Lcom/google/android/youtube/core/model/proto/h;

    invoke-static {v0, p1}, Lcom/google/android/youtube/core/model/proto/h;->a(Lcom/google/android/youtube/core/model/proto/h;Ljava/lang/String;)Ljava/lang/String;

    .line 2109
    return-object p0
.end method

.method public final synthetic a(Lcom/google/protobuf/d;Lcom/google/protobuf/e;)Lcom/google/protobuf/b;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 1988
    invoke-direct {p0, p1, p2}, Lcom/google/android/youtube/core/model/proto/i;->c(Lcom/google/protobuf/d;Lcom/google/protobuf/e;)Lcom/google/android/youtube/core/model/proto/i;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/String;)Lcom/google/android/youtube/core/model/proto/i;
    .registers 4
    .parameter

    .prologue
    .line 2125
    if-nez p1, :cond_8

    .line 2126
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2128
    :cond_8
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/i;->a:Lcom/google/android/youtube/core/model/proto/h;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/model/proto/h;->b(Lcom/google/android/youtube/core/model/proto/h;Z)Z

    .line 2129
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/i;->a:Lcom/google/android/youtube/core/model/proto/h;

    invoke-static {v0, p1}, Lcom/google/android/youtube/core/model/proto/h;->b(Lcom/google/android/youtube/core/model/proto/h;Ljava/lang/String;)Ljava/lang/String;

    .line 2130
    return-object p0
.end method

.method public final synthetic b()Lcom/google/protobuf/g;
    .registers 2

    .prologue
    .line 1988
    invoke-direct {p0}, Lcom/google/android/youtube/core/model/proto/i;->f()Lcom/google/android/youtube/core/model/proto/i;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b(Lcom/google/protobuf/d;Lcom/google/protobuf/e;)Lcom/google/protobuf/k;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 1988
    invoke-direct {p0, p1, p2}, Lcom/google/android/youtube/core/model/proto/i;->c(Lcom/google/protobuf/d;Lcom/google/protobuf/e;)Lcom/google/android/youtube/core/model/proto/i;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c()Lcom/google/protobuf/b;
    .registers 2

    .prologue
    .line 1988
    invoke-direct {p0}, Lcom/google/android/youtube/core/model/proto/i;->f()Lcom/google/android/youtube/core/model/proto/i;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1988
    invoke-direct {p0}, Lcom/google/android/youtube/core/model/proto/i;->f()Lcom/google/android/youtube/core/model/proto/i;

    move-result-object v0

    return-object v0
.end method
