.class final Lcom/google/android/youtube/app/ui/cp;
.super Ljava/util/TimerTask;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/ui/cm;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/ui/cm;)V
    .registers 2
    .parameter

    .prologue
    .line 562
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/cp;->a:Lcom/google/android/youtube/app/ui/cm;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .prologue
    .line 565
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/cp;->a:Lcom/google/android/youtube/app/ui/cm;

    iget-object v0, v0, Lcom/google/android/youtube/app/ui/cm;->a:Lcom/google/android/youtube/app/ui/ch;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/ch;->o(Lcom/google/android/youtube/app/ui/ch;)Lcom/google/android/youtube/app/u;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/cp;->a:Lcom/google/android/youtube/app/ui/cm;

    invoke-static {v1}, Lcom/google/android/youtube/app/ui/cm;->f(Lcom/google/android/youtube/app/ui/cm;)Lcom/google/android/youtube/core/async/a;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/youtube/app/u;->a(Lcom/google/android/youtube/core/async/g;)V

    .line 566
    return-void
.end method
