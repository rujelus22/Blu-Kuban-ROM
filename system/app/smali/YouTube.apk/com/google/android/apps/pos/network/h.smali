.class public final Lcom/google/android/apps/pos/network/h;
.super Lcom/google/android/apps/pos/network/s;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/apps/pos/network/f;

.field private c:[Lcom/google/android/apps/pos/network/l;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/pos/network/f;[Lcom/google/android/apps/pos/network/l;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 784
    iput-object p1, p0, Lcom/google/android/apps/pos/network/h;->a:Lcom/google/android/apps/pos/network/f;

    invoke-direct {p0, p1}, Lcom/google/android/apps/pos/network/s;-><init>(Lcom/google/android/apps/pos/network/f;)V

    .line 785
    iput-object p2, p0, Lcom/google/android/apps/pos/network/h;->c:[Lcom/google/android/apps/pos/network/l;

    .line 786
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/pos/network/f;[Lcom/google/android/apps/pos/network/l;B)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 779
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/pos/network/h;-><init>(Lcom/google/android/apps/pos/network/f;[Lcom/google/android/apps/pos/network/l;)V

    return-void
.end method


# virtual methods
.method public final synthetic a()Lcom/google/android/apps/pos/model/PlusoneResponse;
    .registers 3

    .prologue
    .line 779
    iget-object v0, p0, Lcom/google/android/apps/pos/network/h;->c:[Lcom/google/android/apps/pos/network/l;

    array-length v0, v0

    if-nez v0, :cond_b

    new-instance v0, Lcom/google/android/apps/pos/model/Plusones;

    invoke-direct {v0}, Lcom/google/android/apps/pos/model/Plusones;-><init>()V

    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Lcom/google/android/apps/pos/network/h;->a:Lcom/google/android/apps/pos/network/f;

    iget-object v1, p0, Lcom/google/android/apps/pos/network/h;->c:[Lcom/google/android/apps/pos/network/l;

    invoke-static {v0, v1}, Lcom/google/android/apps/pos/network/f;->b(Lcom/google/android/apps/pos/network/f;[Lcom/google/android/apps/pos/network/t;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/pos/network/d;->a(Ljava/util/List;)Lcom/google/android/apps/pos/model/Plusones;

    move-result-object v0

    goto :goto_a
.end method
