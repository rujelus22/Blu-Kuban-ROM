.class final Lcom/google/android/youtube/app/remote/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/l;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/google/android/youtube/core/async/l;

.field final synthetic c:Lcom/google/android/youtube/app/remote/v;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/remote/v;Ljava/lang/String;Lcom/google/android/youtube/core/async/l;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/google/android/youtube/app/remote/x;->c:Lcom/google/android/youtube/app/remote/v;

    iput-object p2, p0, Lcom/google/android/youtube/app/remote/x;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/youtube/app/remote/x;->b:Lcom/google/android/youtube/core/async/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 81
    check-cast p1, Lcom/google/android/ytremote/model/PairingCode;

    iget-object v0, p0, Lcom/google/android/youtube/app/remote/x;->b:Lcom/google/android/youtube/core/async/l;

    invoke-interface {v0, p1, p2}, Lcom/google/android/youtube/core/async/l;->a(Ljava/lang/Object;Ljava/lang/Exception;)V

    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 81
    check-cast p1, Lcom/google/android/ytremote/model/PairingCode;

    check-cast p2, Lcom/google/android/ytremote/model/CloudScreen;

    iget-object v0, p0, Lcom/google/android/youtube/app/remote/x;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/google/android/youtube/app/remote/x;->a:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/google/android/ytremote/model/CloudScreen;->withName(Ljava/lang/String;)Lcom/google/android/ytremote/model/CloudScreen;

    move-result-object p2

    :cond_12
    :goto_12
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/x;->c:Lcom/google/android/youtube/app/remote/v;

    invoke-static {v0, p2}, Lcom/google/android/youtube/app/remote/v;->a(Lcom/google/android/youtube/app/remote/v;Lcom/google/android/ytremote/model/CloudScreen;)V

    iget-object v0, p0, Lcom/google/android/youtube/app/remote/x;->b:Lcom/google/android/youtube/core/async/l;

    new-instance v1, Lcom/google/android/youtube/app/remote/bb;

    invoke-direct {v1, p2}, Lcom/google/android/youtube/app/remote/bb;-><init>(Lcom/google/android/ytremote/model/CloudScreen;)V

    invoke-interface {v0, p1, v1}, Lcom/google/android/youtube/core/async/l;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_22
    invoke-virtual {p2}, Lcom/google/android/ytremote/model/CloudScreen;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/android/youtube/app/remote/x;->c:Lcom/google/android/youtube/app/remote/v;

    invoke-static {v0}, Lcom/google/android/youtube/app/remote/v;->a(Lcom/google/android/youtube/app/remote/v;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/ytremote/model/CloudScreen;->withName(Ljava/lang/String;)Lcom/google/android/ytremote/model/CloudScreen;

    move-result-object p2

    goto :goto_12
.end method
