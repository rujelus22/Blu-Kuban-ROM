.class final Lcom/google/android/youtube/app/remote/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/athome/app/common/l;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/remote/e;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/remote/e;)V
    .registers 2
    .parameter

    .prologue
    .line 105
    iput-object p1, p0, Lcom/google/android/youtube/app/remote/h;->a:Lcom/google/android/youtube/app/remote/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .registers 4
    .parameter

    .prologue
    .line 107
    mul-int/lit8 v0, p1, 0x64

    div-int/lit8 v0, v0, 0x64

    .line 108
    iget-object v1, p0, Lcom/google/android/youtube/app/remote/h;->a:Lcom/google/android/youtube/app/remote/e;

    invoke-static {v1}, Lcom/google/android/youtube/app/remote/e;->a(Lcom/google/android/youtube/app/remote/e;)I

    move-result v1

    if-eq v1, v0, :cond_1c

    .line 109
    iget-object v1, p0, Lcom/google/android/youtube/app/remote/h;->a:Lcom/google/android/youtube/app/remote/e;

    invoke-static {v1, v0}, Lcom/google/android/youtube/app/remote/e;->a(Lcom/google/android/youtube/app/remote/e;I)I

    .line 110
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/h;->a:Lcom/google/android/youtube/app/remote/e;

    iget-object v1, p0, Lcom/google/android/youtube/app/remote/h;->a:Lcom/google/android/youtube/app/remote/e;

    invoke-static {v1}, Lcom/google/android/youtube/app/remote/e;->a(Lcom/google/android/youtube/app/remote/e;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/remote/e;->c(I)V

    .line 112
    :cond_1c
    return-void
.end method
