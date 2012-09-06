.class public final Lcom/google/android/apps/pos/network/n;
.super Lcom/google/android/apps/pos/network/s;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/apps/pos/network/f;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/pos/network/f;)V
    .registers 2
    .parameter

    .prologue
    .line 677
    iput-object p1, p0, Lcom/google/android/apps/pos/network/n;->a:Lcom/google/android/apps/pos/network/f;

    invoke-direct {p0, p1}, Lcom/google/android/apps/pos/network/s;-><init>(Lcom/google/android/apps/pos/network/f;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/pos/network/f;B)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 674
    invoke-direct {p0, p1}, Lcom/google/android/apps/pos/network/n;-><init>(Lcom/google/android/apps/pos/network/f;)V

    return-void
.end method


# virtual methods
.method public final synthetic a()Lcom/google/android/apps/pos/model/PlusoneResponse;
    .registers 4

    .prologue
    .line 674
    new-instance v0, Lcom/google/android/apps/pos/network/o;

    invoke-direct {v0}, Lcom/google/android/apps/pos/network/o;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/android/apps/pos/network/o;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    iget-object v0, p0, Lcom/google/android/apps/pos/network/n;->a:Lcom/google/android/apps/pos/network/f;

    invoke-static {v0, v1}, Lcom/google/android/apps/pos/network/f;->a(Lcom/google/android/apps/pos/network/f;[Lcom/google/android/apps/pos/network/t;)Lcom/google/android/apps/pos/network/BatchResponseItemJson;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/pos/network/d;->a(Lcom/google/android/apps/pos/network/BatchResponseItemJson;)Lcom/google/android/apps/pos/model/SignUpState;

    move-result-object v0

    return-object v0
.end method
