.class Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$9;
.super Ljava/lang/Object;
.source "AtHomeMediaRouter.java"

# interfaces
.implements Landroid/support/place/music/TungstenGroupingService$OnGetRxVolumes;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->requestVolumes()V
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
    .line 868
    iput-object p1, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$9;->this$0:Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetRxVolumes(Ljava/util/List;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/place/music/TgsRxVolume;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 871
    .local p1, result:Ljava/util/List;,"Ljava/util/List<Landroid/support/place/music/TgsRxVolume;>;"
    iget-object v0, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$9;->this$0:Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;

    #calls: Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->processRxVolumes(Ljava/util/List;)V
    invoke-static {v0, p1}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->access$3100(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;Ljava/util/List;)V

    .line 872
    return-void
.end method
