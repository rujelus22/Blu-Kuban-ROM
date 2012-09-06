.class public final Lcom/google/android/youtube/core/model/proto/g;
.super Lcom/google/protobuf/g;
.source "SourceFile"


# instance fields
.field private a:Lcom/google/android/youtube/core/model/proto/f;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 1114
    invoke-direct {p0}, Lcom/google/protobuf/g;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;)Lcom/google/android/youtube/core/model/proto/g;
    .registers 4
    .parameter

    .prologue
    .line 1224
    if-nez p1, :cond_8

    .line 1225
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1227
    :cond_8
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/g;->a:Lcom/google/android/youtube/core/model/proto/f;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/model/proto/f;->a(Lcom/google/android/youtube/core/model/proto/f;Z)Z

    .line 1228
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/g;->a:Lcom/google/android/youtube/core/model/proto/f;

    invoke-static {v0, p1}, Lcom/google/android/youtube/core/model/proto/f;->a(Lcom/google/android/youtube/core/model/proto/f;Ljava/lang/String;)Ljava/lang/String;

    .line 1229
    return-object p0
.end method

.method private b(Ljava/lang/String;)Lcom/google/android/youtube/core/model/proto/g;
    .registers 4
    .parameter

    .prologue
    .line 1245
    if-nez p1, :cond_8

    .line 1246
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1248
    :cond_8
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/g;->a:Lcom/google/android/youtube/core/model/proto/f;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/model/proto/f;->b(Lcom/google/android/youtube/core/model/proto/f;Z)Z

    .line 1249
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/g;->a:Lcom/google/android/youtube/core/model/proto/f;

    invoke-static {v0, p1}, Lcom/google/android/youtube/core/model/proto/f;->b(Lcom/google/android/youtube/core/model/proto/f;Ljava/lang/String;)Ljava/lang/String;

    .line 1250
    return-object p0
.end method

.method private c(Lcom/google/protobuf/d;Lcom/google/protobuf/e;)Lcom/google/android/youtube/core/model/proto/g;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 1193
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/d;->a()I

    move-result v0

    .line 1194
    sparse-switch v0, :sswitch_data_1e

    .line 1198
    invoke-virtual {p1, v0}, Lcom/google/protobuf/d;->b(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1199
    :sswitch_d
    return-object p0

    .line 1204
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/d;->d()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/model/proto/g;->a(Ljava/lang/String;)Lcom/google/android/youtube/core/model/proto/g;

    goto :goto_0

    .line 1208
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/d;->d()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/model/proto/g;->b(Ljava/lang/String;)Lcom/google/android/youtube/core/model/proto/g;

    goto :goto_0

    .line 1194
    :sswitch_data_1e
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_16
    .end sparse-switch
.end method

.method static synthetic d()Lcom/google/android/youtube/core/model/proto/g;
    .registers 1

    .prologue
    .line 1108
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/g;->e()Lcom/google/android/youtube/core/model/proto/g;

    move-result-object v0

    return-object v0
.end method

.method private static e()Lcom/google/android/youtube/core/model/proto/g;
    .registers 3

    .prologue
    .line 1117
    new-instance v0, Lcom/google/android/youtube/core/model/proto/g;

    invoke-direct {v0}, Lcom/google/android/youtube/core/model/proto/g;-><init>()V

    .line 1118
    new-instance v1, Lcom/google/android/youtube/core/model/proto/f;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/youtube/core/model/proto/f;-><init>(C)V

    iput-object v1, v0, Lcom/google/android/youtube/core/model/proto/g;->a:Lcom/google/android/youtube/core/model/proto/f;

    .line 1119
    return-object v0
.end method

.method private f()Lcom/google/android/youtube/core/model/proto/g;
    .registers 4

    .prologue
    .line 1138
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/g;->e()Lcom/google/android/youtube/core/model/proto/g;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/proto/g;->a:Lcom/google/android/youtube/core/model/proto/f;

    invoke-static {}, Lcom/google/android/youtube/core/model/proto/f;->a()Lcom/google/android/youtube/core/model/proto/f;

    move-result-object v2

    if-eq v1, v2, :cond_26

    invoke-virtual {v1}, Lcom/google/android/youtube/core/model/proto/f;->b()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-virtual {v1}, Lcom/google/android/youtube/core/model/proto/f;->c()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/youtube/core/model/proto/g;->a(Ljava/lang/String;)Lcom/google/android/youtube/core/model/proto/g;

    :cond_19
    invoke-virtual {v1}, Lcom/google/android/youtube/core/model/proto/f;->d()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-virtual {v1}, Lcom/google/android/youtube/core/model/proto/f;->e()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/youtube/core/model/proto/g;->b(Ljava/lang/String;)Lcom/google/android/youtube/core/model/proto/g;

    :cond_26
    return-object v0
.end method


# virtual methods
.method public final a()Lcom/google/android/youtube/core/model/proto/f;
    .registers 3

    .prologue
    .line 1166
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/g;->a:Lcom/google/android/youtube/core/model/proto/f;

    if-nez v0, :cond_c

    .line 1167
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "build() has already been called on this Builder."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1170
    :cond_c
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/g;->a:Lcom/google/android/youtube/core/model/proto/f;

    .line 1171
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/youtube/core/model/proto/g;->a:Lcom/google/android/youtube/core/model/proto/f;

    .line 1172
    return-object v0
.end method

.method public final synthetic a(Lcom/google/protobuf/d;Lcom/google/protobuf/e;)Lcom/google/protobuf/b;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 1108
    invoke-direct {p0, p1, p2}, Lcom/google/android/youtube/core/model/proto/g;->c(Lcom/google/protobuf/d;Lcom/google/protobuf/e;)Lcom/google/android/youtube/core/model/proto/g;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b()Lcom/google/protobuf/g;
    .registers 2

    .prologue
    .line 1108
    invoke-direct {p0}, Lcom/google/android/youtube/core/model/proto/g;->f()Lcom/google/android/youtube/core/model/proto/g;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b(Lcom/google/protobuf/d;Lcom/google/protobuf/e;)Lcom/google/protobuf/k;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 1108
    invoke-direct {p0, p1, p2}, Lcom/google/android/youtube/core/model/proto/g;->c(Lcom/google/protobuf/d;Lcom/google/protobuf/e;)Lcom/google/android/youtube/core/model/proto/g;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c()Lcom/google/protobuf/b;
    .registers 2

    .prologue
    .line 1108
    invoke-direct {p0}, Lcom/google/android/youtube/core/model/proto/g;->f()Lcom/google/android/youtube/core/model/proto/g;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1108
    invoke-direct {p0}, Lcom/google/android/youtube/core/model/proto/g;->f()Lcom/google/android/youtube/core/model/proto/g;

    move-result-object v0

    return-object v0
.end method
