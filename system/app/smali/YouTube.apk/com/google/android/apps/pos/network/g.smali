.class public final Lcom/google/android/apps/pos/network/g;
.super Lcom/google/android/apps/pos/network/s;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/apps/pos/network/f;

.field private c:[Lcom/google/android/apps/pos/network/j;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/apps/pos/network/f;[Lcom/google/android/apps/pos/network/j;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 849
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/apps/pos/network/g;-><init>(Lcom/google/android/apps/pos/network/f;[Lcom/google/android/apps/pos/network/j;B)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/apps/pos/network/f;[Lcom/google/android/apps/pos/network/j;B)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 854
    iput-object p1, p0, Lcom/google/android/apps/pos/network/g;->a:Lcom/google/android/apps/pos/network/f;

    invoke-direct {p0, p1}, Lcom/google/android/apps/pos/network/s;-><init>(Lcom/google/android/apps/pos/network/f;)V

    .line 855
    iput-object p2, p0, Lcom/google/android/apps/pos/network/g;->c:[Lcom/google/android/apps/pos/network/j;

    .line 856
    return-void
.end method


# virtual methods
.method public final synthetic a()Lcom/google/android/apps/pos/model/PlusoneResponse;
    .registers 3

    .prologue
    .line 849
    iget-object v0, p0, Lcom/google/android/apps/pos/network/g;->c:[Lcom/google/android/apps/pos/network/j;

    array-length v0, v0

    if-nez v0, :cond_b

    new-instance v0, Lcom/google/android/apps/pos/model/Plusones;

    invoke-direct {v0}, Lcom/google/android/apps/pos/model/Plusones;-><init>()V

    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Lcom/google/android/apps/pos/network/g;->a:Lcom/google/android/apps/pos/network/f;

    iget-object v1, p0, Lcom/google/android/apps/pos/network/g;->c:[Lcom/google/android/apps/pos/network/j;

    invoke-static {v0, v1}, Lcom/google/android/apps/pos/network/f;->b(Lcom/google/android/apps/pos/network/f;[Lcom/google/android/apps/pos/network/t;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/pos/network/d;->a(Ljava/util/List;)Lcom/google/android/apps/pos/model/Plusones;

    move-result-object v0

    goto :goto_a
.end method
