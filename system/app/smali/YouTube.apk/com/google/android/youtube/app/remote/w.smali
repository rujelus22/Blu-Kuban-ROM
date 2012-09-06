.class final Lcom/google/android/youtube/app/remote/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/ar;


# instance fields
.field final synthetic a:Lcom/google/android/ytremote/backend/a/f;

.field final synthetic b:Lcom/google/android/youtube/app/remote/v;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/remote/v;Lcom/google/android/ytremote/backend/a/f;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/google/android/youtube/app/remote/w;->b:Lcom/google/android/youtube/app/remote/v;

    iput-object p2, p0, Lcom/google/android/youtube/app/remote/w;->a:Lcom/google/android/ytremote/backend/a/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Lcom/google/android/youtube/core/async/l;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 60
    check-cast p1, Lcom/google/android/ytremote/model/PairingCode;

    iget-object v0, p0, Lcom/google/android/youtube/app/remote/w;->a:Lcom/google/android/ytremote/backend/a/f;

    invoke-virtual {v0, p1}, Lcom/google/android/ytremote/backend/a/f;->a(Lcom/google/android/ytremote/model/PairingCode;)Lcom/google/android/ytremote/model/CloudScreen;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-interface {p2, p1, v0}, Lcom/google/android/youtube/core/async/l;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_d
    return-void

    :cond_e
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    invoke-interface {p2, p1, v0}, Lcom/google/android/youtube/core/async/l;->a(Ljava/lang/Object;Ljava/lang/Exception;)V

    goto :goto_d
.end method
