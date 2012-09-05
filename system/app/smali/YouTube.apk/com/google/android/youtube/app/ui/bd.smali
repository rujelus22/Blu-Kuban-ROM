.class final Lcom/google/android/youtube/app/ui/bd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/g;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/Analytics;

.field final synthetic b:Lcom/google/android/youtube/app/p;

.field final synthetic c:Lcom/google/android/youtube/app/ui/bl;

.field final synthetic d:Lcom/google/android/youtube/core/e;

.field final synthetic e:Lcom/google/android/youtube/app/ui/bc;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/ui/bc;Lcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/app/p;Lcom/google/android/youtube/app/ui/bl;Lcom/google/android/youtube/core/e;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/bd;->e:Lcom/google/android/youtube/app/ui/bc;

    iput-object p2, p0, Lcom/google/android/youtube/app/ui/bd;->a:Lcom/google/android/youtube/core/Analytics;

    iput-object p3, p0, Lcom/google/android/youtube/app/ui/bd;->b:Lcom/google/android/youtube/app/p;

    iput-object p4, p0, Lcom/google/android/youtube/app/ui/bd;->c:Lcom/google/android/youtube/app/ui/bl;

    iput-object p5, p0, Lcom/google/android/youtube/app/ui/bd;->d:Lcom/google/android/youtube/core/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bd;->a:Lcom/google/android/youtube/core/Analytics;

    const-string v1, "RemoteError"

    const-string v2, "INVALID_PAIRING_CODE"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/Analytics;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bd;->d:Lcom/google/android/youtube/core/e;

    const v1, 0x7f0a01c2

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/e;->a(I)V

    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 83
    check-cast p2, Lcom/google/android/a/e/c;

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bd;->a:Lcom/google/android/youtube/core/Analytics;

    const-string v1, "RemoteControlPaired"

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/Analytics;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bd;->e:Lcom/google/android/youtube/app/ui/bc;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/bc;->a(Lcom/google/android/youtube/app/ui/bc;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bd;->b:Lcom/google/android/youtube/app/p;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/bd;->e:Lcom/google/android/youtube/app/ui/bc;

    invoke-static {v1}, Lcom/google/android/youtube/app/ui/bc;->a(Lcom/google/android/youtube/app/ui/bc;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Lcom/google/android/youtube/app/p;->a(Lcom/google/android/a/e/c;Ljava/lang/String;)V

    :cond_1c
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bd;->c:Lcom/google/android/youtube/app/ui/bl;

    invoke-interface {v0}, Lcom/google/android/youtube/app/ui/bl;->a()V

    return-void
.end method
