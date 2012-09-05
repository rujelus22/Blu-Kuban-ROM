.class Lcom/google/android/music/SharedSongsActivity$AsyncWorker$1;
.super Ljava/lang/Object;
.source "SharedSongsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/SharedSongsActivity$AsyncWorker;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/music/SharedSongsActivity$AsyncWorker;


# direct methods
.method constructor <init>(Lcom/google/android/music/SharedSongsActivity$AsyncWorker;)V
    .registers 2
    .parameter

    .prologue
    .line 167
    iput-object p1, p0, Lcom/google/android/music/SharedSongsActivity$AsyncWorker$1;->this$1:Lcom/google/android/music/SharedSongsActivity$AsyncWorker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/google/android/music/SharedSongsActivity$AsyncWorker$1;->this$1:Lcom/google/android/music/SharedSongsActivity$AsyncWorker;

    #calls: Lcom/google/android/music/SharedSongsActivity$AsyncWorker;->checkAccountsMatch()V
    invoke-static {v0}, Lcom/google/android/music/SharedSongsActivity$AsyncWorker;->access$300(Lcom/google/android/music/SharedSongsActivity$AsyncWorker;)V

    .line 170
    return-void
.end method
