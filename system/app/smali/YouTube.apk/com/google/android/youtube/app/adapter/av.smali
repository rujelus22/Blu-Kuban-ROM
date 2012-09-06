.class final Lcom/google/android/youtube/app/adapter/av;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/adapter/au;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/adapter/au;Landroid/os/Looper;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lcom/google/android/youtube/app/adapter/av;->a:Lcom/google/android/youtube/app/adapter/au;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 3
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/av;->a:Lcom/google/android/youtube/app/adapter/au;

    invoke-static {v0}, Lcom/google/android/youtube/app/adapter/au;->a(Lcom/google/android/youtube/app/adapter/au;)V

    .line 52
    return-void
.end method
