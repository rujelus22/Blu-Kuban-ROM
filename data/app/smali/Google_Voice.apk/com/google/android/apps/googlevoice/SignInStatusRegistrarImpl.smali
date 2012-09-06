.class public Lcom/google/android/apps/googlevoice/SignInStatusRegistrarImpl;
.super Ljava/lang/Object;
.source "SignInStatusRegistrarImpl.java"

# interfaces
.implements Lcom/google/android/apps/googlevoice/SignInStatusRegistrar;


# instance fields
.field private listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/googlevoice/SignInStatusListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/SignInStatusRegistrarImpl;->listeners:Ljava/util/List;

    .line 18
    return-void
.end method


# virtual methods
.method public addListener(Lcom/google/android/apps/googlevoice/SignInStatusListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/SignInStatusRegistrarImpl;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    return-void
.end method

.method public onSignedIn()V
    .registers 4

    .prologue
    .line 27
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/SignInStatusRegistrarImpl;->listeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/googlevoice/SignInStatusListener;

    .line 28
    .local v1, listener:Lcom/google/android/apps/googlevoice/SignInStatusListener;
    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/SignInStatusListener;->onSignedIn()V

    goto :goto_6

    .line 30
    .end local v1           #listener:Lcom/google/android/apps/googlevoice/SignInStatusListener;
    :cond_16
    return-void
.end method

.method public onSigningOut()V
    .registers 4

    .prologue
    .line 34
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/SignInStatusRegistrarImpl;->listeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/googlevoice/SignInStatusListener;

    .line 35
    .local v1, listener:Lcom/google/android/apps/googlevoice/SignInStatusListener;
    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/SignInStatusListener;->onSigningOut()V

    goto :goto_6

    .line 37
    .end local v1           #listener:Lcom/google/android/apps/googlevoice/SignInStatusListener;
    :cond_16
    return-void
.end method
