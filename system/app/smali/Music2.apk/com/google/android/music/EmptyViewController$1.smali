.class Lcom/google/android/music/EmptyViewController$1;
.super Ljava/lang/Object;
.source "EmptyViewController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/EmptyViewController;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/EmptyViewController;


# direct methods
.method constructor <init>(Lcom/google/android/music/EmptyViewController;)V
    .registers 2
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/google/android/music/EmptyViewController$1;->this$0:Lcom/google/android/music/EmptyViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/android/music/EmptyViewController$1;->this$0:Lcom/google/android/music/EmptyViewController;

    #calls: Lcom/google/android/music/EmptyViewController;->updateMusicAvailableVariables()V
    invoke-static {v0}, Lcom/google/android/music/EmptyViewController;->access$000(Lcom/google/android/music/EmptyViewController;)V

    .line 90
    return-void
.end method
