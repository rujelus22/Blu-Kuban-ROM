.class final Lcom/google/android/youtube/core/transfer/h;
.super Lcom/google/android/youtube/core/utils/v;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/transfer/i;


# direct methods
.method constructor <init>(Ljava/lang/Class;Lcom/google/android/youtube/core/transfer/i;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 88
    iput-object p2, p0, Lcom/google/android/youtube/core/transfer/h;->a:Lcom/google/android/youtube/core/transfer/i;

    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/utils/v;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method protected final synthetic a(Landroid/os/Binder;)V
    .registers 3
    .parameter

    .prologue
    .line 88
    check-cast p1, Lcom/google/android/youtube/core/transfer/l;

    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/h;->a:Lcom/google/android/youtube/core/transfer/i;

    invoke-virtual {p1, v0}, Lcom/google/android/youtube/core/transfer/l;->b(Lcom/google/android/youtube/core/transfer/i;)Z

    return-void
.end method

.method protected final synthetic b(Landroid/os/Binder;)V
    .registers 3
    .parameter

    .prologue
    .line 88
    check-cast p1, Lcom/google/android/youtube/core/transfer/l;

    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/h;->a:Lcom/google/android/youtube/core/transfer/i;

    invoke-virtual {p1, v0}, Lcom/google/android/youtube/core/transfer/l;->a(Lcom/google/android/youtube/core/transfer/i;)Z

    return-void
.end method
