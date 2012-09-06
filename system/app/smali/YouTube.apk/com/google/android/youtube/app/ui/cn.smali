.class final Lcom/google/android/youtube/app/ui/cn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/ui/cj;

.field final synthetic b:Lcom/google/android/youtube/app/ui/cm;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/ui/cm;Lcom/google/android/youtube/app/ui/cj;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/cn;->b:Lcom/google/android/youtube/app/ui/cm;

    iput-object p2, p0, Lcom/google/android/youtube/app/ui/cn;->a:Lcom/google/android/youtube/app/ui/cj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .prologue
    .line 105
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/cn;->b:Lcom/google/android/youtube/app/ui/cm;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/cm;->a(Lcom/google/android/youtube/app/ui/cm;)Lcom/google/android/youtube/app/remote/RemoteControl;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/cn;->b:Lcom/google/android/youtube/app/ui/cm;

    invoke-interface {v0, v1}, Lcom/google/android/youtube/app/remote/RemoteControl;->d(Lcom/google/android/youtube/app/remote/aj;)V

    .line 106
    return-void
.end method
