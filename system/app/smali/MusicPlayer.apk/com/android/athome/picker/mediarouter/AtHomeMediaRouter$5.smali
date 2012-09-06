.class Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$5;
.super Ljava/lang/Object;
.source "AtHomeMediaRouter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;


# direct methods
.method constructor <init>(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;)V
    .registers 2
    .parameter

    .prologue
    .line 572
    iput-object p1, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$5;->this$0:Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 575
    iget-object v0, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$5;->this$0:Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;

    const/4 v1, 0x0

    #setter for: Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mIgnoreTgsVolumeUpdates:Z
    invoke-static {v0, v1}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->access$2202(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;Z)Z

    .line 576
    return-void
.end method
