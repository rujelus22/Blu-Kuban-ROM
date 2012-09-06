.class Lcom/google/android/apps/googlevoice/AndroidDependencyResolver$2;
.super Ljava/lang/Object;
.source "AndroidDependencyResolver.java"

# interfaces
.implements Lcom/google/android/apps/googlevoice/UpdateStateManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;->getUpdateStateManager()Lcom/google/android/apps/googlevoice/UpdateStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/googlevoice/UpdateStateManager$Listener;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;

.field private volatile updateState:Lcom/google/android/apps/googlevoice/UpdateStateManager$State;


# direct methods
.method constructor <init>(Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;)V
    .registers 3
    .parameter

    .prologue
    .line 616
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver$2;->this$0:Lcom/google/android/apps/googlevoice/AndroidDependencyResolver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 618
    sget-object v0, Lcom/google/android/apps/googlevoice/UpdateStateManager$State;->OK:Lcom/google/android/apps/googlevoice/UpdateStateManager$State;

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver$2;->updateState:Lcom/google/android/apps/googlevoice/UpdateStateManager$State;

    .line 619
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver$2;->listeners:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addListener(Lcom/google/android/apps/googlevoice/UpdateStateManager$Listener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 636
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver$2;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 637
    return-void
.end method

.method public getUpdateState()Lcom/google/android/apps/googlevoice/UpdateStateManager$State;
    .registers 2

    .prologue
    .line 631
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver$2;->updateState:Lcom/google/android/apps/googlevoice/UpdateStateManager$State;

    return-object v0
.end method

.method public removeListener(Lcom/google/android/apps/googlevoice/UpdateStateManager$Listener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 641
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver$2;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 642
    return-void
.end method

.method public setUpdateState(Lcom/google/android/apps/googlevoice/UpdateStateManager$State;)V
    .registers 5
    .parameter "updateState"

    .prologue
    .line 623
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver$2;->updateState:Lcom/google/android/apps/googlevoice/UpdateStateManager$State;

    .line 624
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/AndroidDependencyResolver$2;->listeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/googlevoice/UpdateStateManager$Listener;

    .line 625
    .local v1, listener:Lcom/google/android/apps/googlevoice/UpdateStateManager$Listener;
    invoke-interface {v1, p1}, Lcom/google/android/apps/googlevoice/UpdateStateManager$Listener;->onUpdateStateChanged(Lcom/google/android/apps/googlevoice/UpdateStateManager$State;)V

    goto :goto_8

    .line 627
    .end local v1           #listener:Lcom/google/android/apps/googlevoice/UpdateStateManager$Listener;
    :cond_18
    return-void
.end method
