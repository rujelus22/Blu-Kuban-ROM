.class Lcom/google/android/music/athome/AtHomeStateController$5;
.super Ljava/lang/Object;
.source "AtHomeStateController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/athome/AtHomeStateController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/athome/AtHomeStateController;


# direct methods
.method constructor <init>(Lcom/google/android/music/athome/AtHomeStateController;)V
    .registers 2
    .parameter

    .prologue
    .line 318
    iput-object p1, p0, Lcom/google/android/music/athome/AtHomeStateController$5;->this$0:Lcom/google/android/music/athome/AtHomeStateController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 321
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeStateController$5;->this$0:Lcom/google/android/music/athome/AtHomeStateController;

    #calls: Lcom/google/android/music/athome/AtHomeStateController;->updateAtHomeState()V
    invoke-static {v0}, Lcom/google/android/music/athome/AtHomeStateController;->access$1100(Lcom/google/android/music/athome/AtHomeStateController;)V

    .line 322
    return-void
.end method
