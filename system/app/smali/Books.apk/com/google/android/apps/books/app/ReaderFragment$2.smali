.class Lcom/google/android/apps/books/app/ReaderFragment$2;
.super Landroid/content/BroadcastReceiver;
.source "ReaderFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/app/ReaderFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/books/app/ReaderFragment;


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/app/ReaderFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 322
    iput-object p1, p0, Lcom/google/android/apps/books/app/ReaderFragment$2;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 325
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$2;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    #calls: Lcom/google/android/apps/books/app/ReaderFragment;->updateDeviceConnected(Landroid/content/Context;)V
    invoke-static {v0, p1}, Lcom/google/android/apps/books/app/ReaderFragment;->access$400(Lcom/google/android/apps/books/app/ReaderFragment;Landroid/content/Context;)V

    .line 326
    return-void
.end method
