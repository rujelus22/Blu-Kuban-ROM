.class public final Lcom/google/android/youtube/core/model/proto/d;
.super Lcom/google/protobuf/g;
.source "SourceFile"


# instance fields
.field private a:Lcom/google/android/youtube/core/model/proto/c;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 781
    invoke-direct {p0}, Lcom/google/protobuf/g;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;)Lcom/google/android/youtube/core/model/proto/d;
    .registers 4
    .parameter

    .prologue
    .line 898
    if-nez p1, :cond_8

    .line 899
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 901
    :cond_8
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/d;->a:Lcom/google/android/youtube/core/model/proto/c;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/model/proto/c;->a(Lcom/google/android/youtube/core/model/proto/c;Z)Z

    .line 902
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/d;->a:Lcom/google/android/youtube/core/model/proto/c;

    invoke-static {v0, p1}, Lcom/google/android/youtube/core/model/proto/c;->a(Lcom/google/android/youtube/core/model/proto/c;Ljava/lang/String;)Ljava/lang/String;

    .line 903
    return-object p0
.end method

.method private b(Ljava/lang/String;)Lcom/google/android/youtube/core/model/proto/d;
    .registers 4
    .parameter

    .prologue
    .line 919
    if-nez p1, :cond_8

    .line 920
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 922
    :cond_8
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/d;->a:Lcom/google/android/youtube/core/model/proto/c;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/model/proto/c;->b(Lcom/google/android/youtube/core/model/proto/c;Z)Z

    .line 923
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/d;->a:Lcom/google/android/youtube/core/model/proto/c;

    invoke-static {v0, p1}, Lcom/google/android/youtube/core/model/proto/c;->b(Lcom/google/android/youtube/core/model/proto/c;Ljava/lang/String;)Ljava/lang/String;

    .line 924
    return-object p0
.end method

.method private c(Lcom/google/protobuf/d;Lcom/google/protobuf/e;)Lcom/google/android/youtube/core/model/proto/d;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 863
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/d;->a()I

    move-result v0

    .line 864
    sparse-switch v0, :sswitch_data_26

    .line 868
    invoke-virtual {p1, v0}, Lcom/google/protobuf/d;->b(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 869
    :sswitch_d
    return-object p0

    .line 874
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/d;->d()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/model/proto/d;->a(Ljava/lang/String;)Lcom/google/android/youtube/core/model/proto/d;

    goto :goto_0

    .line 878
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/d;->d()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/model/proto/d;->b(Ljava/lang/String;)Lcom/google/android/youtube/core/model/proto/d;

    goto :goto_0

    .line 882
    :sswitch_1e
    invoke-virtual {p1}, Lcom/google/protobuf/d;->d()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/model/proto/d;->c(Ljava/lang/String;)Lcom/google/android/youtube/core/model/proto/d;

    goto :goto_0

    .line 864
    :sswitch_data_26
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_16
        0x1a -> :sswitch_1e
    .end sparse-switch
.end method

.method private c(Ljava/lang/String;)Lcom/google/android/youtube/core/model/proto/d;
    .registers 4
    .parameter

    .prologue
    .line 940
    if-nez p1, :cond_8

    .line 941
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 943
    :cond_8
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/d;->a:Lcom/google/android/youtube/core/model/proto/c;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/model/proto/c;->c(Lcom/google/android/youtube/core/model/proto/c;Z)Z

    .line 944
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/d;->a:Lcom/google/android/youtube/core/model/proto/c;

    invoke-static {v0, p1}, Lcom/google/android/youtube/core/model/proto/c;->c(Lcom/google/android/youtube/core/model/proto/c;Ljava/lang/String;)Ljava/lang/String;

    .line 945
    return-object p0
.end method

.method static synthetic d()Lcom/google/android/youtube/core/model/proto/d;
    .registers 1

    .prologue
    .line 775
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/d;->e()Lcom/google/android/youtube/core/model/proto/d;

    move-result-object v0

    return-object v0
.end method

.method private static e()Lcom/google/android/youtube/core/model/proto/d;
    .registers 2

    .prologue
    .line 784
    new-instance v0, Lcom/google/android/youtube/core/model/proto/d;

    invoke-direct {v0}, Lcom/google/android/youtube/core/model/proto/d;-><init>()V

    .line 785
    new-instance v1, Lcom/google/android/youtube/core/model/proto/c;

    invoke-direct {v1}, Lcom/google/android/youtube/core/model/proto/c;-><init>()V

    iput-object v1, v0, Lcom/google/android/youtube/core/model/proto/d;->a:Lcom/google/android/youtube/core/model/proto/c;

    .line 786
    return-object v0
.end method

.method private f()Lcom/google/android/youtube/core/model/proto/d;
    .registers 3

    .prologue
    .line 805
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/d;->e()Lcom/google/android/youtube/core/model/proto/d;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/proto/d;->a:Lcom/google/android/youtube/core/model/proto/c;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/proto/d;->a(Lcom/google/android/youtube/core/model/proto/c;)Lcom/google/android/youtube/core/model/proto/d;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/google/android/youtube/core/model/proto/c;
    .registers 3

    .prologue
    .line 833
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/d;->a:Lcom/google/android/youtube/core/model/proto/c;

    if-nez v0, :cond_c

    .line 834
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "build() has already been called on this Builder."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 837
    :cond_c
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/d;->a:Lcom/google/android/youtube/core/model/proto/c;

    .line 838
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/youtube/core/model/proto/d;->a:Lcom/google/android/youtube/core/model/proto/c;

    .line 839
    return-object v0
.end method

.method public final a(Lcom/google/android/youtube/core/model/proto/c;)Lcom/google/android/youtube/core/model/proto/d;
    .registers 3
    .parameter

    .prologue
    .line 844
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/c;->a()Lcom/google/android/youtube/core/model/proto/c;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 854
    :cond_6
    :goto_6
    return-object p0

    .line 845
    :cond_7
    invoke-virtual {p1}, Lcom/google/android/youtube/core/model/proto/c;->b()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 846
    invoke-virtual {p1}, Lcom/google/android/youtube/core/model/proto/c;->c()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/model/proto/d;->a(Ljava/lang/String;)Lcom/google/android/youtube/core/model/proto/d;

    .line 848
    :cond_14
    invoke-virtual {p1}, Lcom/google/android/youtube/core/model/proto/c;->d()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 849
    invoke-virtual {p1}, Lcom/google/android/youtube/core/model/proto/c;->e()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/model/proto/d;->b(Ljava/lang/String;)Lcom/google/android/youtube/core/model/proto/d;

    .line 851
    :cond_21
    invoke-virtual {p1}, Lcom/google/android/youtube/core/model/proto/c;->f()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 852
    invoke-virtual {p1}, Lcom/google/android/youtube/core/model/proto/c;->g()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/model/proto/d;->c(Ljava/lang/String;)Lcom/google/android/youtube/core/model/proto/d;

    goto :goto_6
.end method

.method public final synthetic a(Lcom/google/protobuf/d;Lcom/google/protobuf/e;)Lcom/google/protobuf/b;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 775
    invoke-direct {p0, p1, p2}, Lcom/google/android/youtube/core/model/proto/d;->c(Lcom/google/protobuf/d;Lcom/google/protobuf/e;)Lcom/google/android/youtube/core/model/proto/d;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b()Lcom/google/protobuf/g;
    .registers 2

    .prologue
    .line 775
    invoke-direct {p0}, Lcom/google/android/youtube/core/model/proto/d;->f()Lcom/google/android/youtube/core/model/proto/d;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b(Lcom/google/protobuf/d;Lcom/google/protobuf/e;)Lcom/google/protobuf/k;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 775
    invoke-direct {p0, p1, p2}, Lcom/google/android/youtube/core/model/proto/d;->c(Lcom/google/protobuf/d;Lcom/google/protobuf/e;)Lcom/google/android/youtube/core/model/proto/d;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c()Lcom/google/protobuf/b;
    .registers 2

    .prologue
    .line 775
    invoke-direct {p0}, Lcom/google/android/youtube/core/model/proto/d;->f()Lcom/google/android/youtube/core/model/proto/d;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 775
    invoke-direct {p0}, Lcom/google/android/youtube/core/model/proto/d;->f()Lcom/google/android/youtube/core/model/proto/d;

    move-result-object v0

    return-object v0
.end method
