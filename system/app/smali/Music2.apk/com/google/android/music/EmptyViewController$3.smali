.class Lcom/google/android/music/EmptyViewController$3;
.super Landroid/database/ContentObserver;
.source "EmptyViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/EmptyViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/EmptyViewController;


# direct methods
.method constructor <init>(Lcom/google/android/music/EmptyViewController;Landroid/os/Handler;)V
    .registers 3
    .parameter
    .parameter "x0"

    .prologue
    .line 230
    iput-object p1, p0, Lcom/google/android/music/EmptyViewController$3;->this$0:Lcom/google/android/music/EmptyViewController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 3
    .parameter "selfChange"

    .prologue
    .line 234
    iget-object v0, p0, Lcom/google/android/music/EmptyViewController$3;->this$0:Lcom/google/android/music/EmptyViewController;

    #calls: Lcom/google/android/music/EmptyViewController;->updateMusicAvailableVariables()V
    invoke-static {v0}, Lcom/google/android/music/EmptyViewController;->access$000(Lcom/google/android/music/EmptyViewController;)V

    .line 235
    return-void
.end method
