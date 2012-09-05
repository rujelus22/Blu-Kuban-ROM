.class Lcom/google/android/apps/books/app/ReaderFragment$PlusOneAuthenticationListener;
.super Ljava/lang/Object;
.source "ReaderFragment.java"

# interfaces
.implements Lcom/google/android/plus1/PlusOneController$ValueListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/app/ReaderFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PlusOneAuthenticationListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/plus1/PlusOneController$ValueListener",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/books/app/ReaderFragment;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/books/app/ReaderFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 4269
    iput-object p1, p0, Lcom/google/android/apps/books/app/ReaderFragment$PlusOneAuthenticationListener;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/books/app/ReaderFragment;Lcom/google/android/apps/books/app/ReaderFragment$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4269
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/app/ReaderFragment$PlusOneAuthenticationListener;-><init>(Lcom/google/android/apps/books/app/ReaderFragment;)V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .registers 5
    .parameter "error"

    .prologue
    .line 4284
    const-string v0, "ReaderFragment"

    const/4 v1, 0x6

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 4285
    const-string v0, "ReaderFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error acquiring +1 permission: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4287
    :cond_21
    return-void
.end method

.method public bridge synthetic onNewValue(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 4269
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/books/app/ReaderFragment$PlusOneAuthenticationListener;->onNewValue(Ljava/lang/Void;)V

    return-void
.end method

.method public onNewValue(Ljava/lang/Void;)V
    .registers 7
    .parameter "value"

    .prologue
    .line 4273
    iget-object v3, p0, Lcom/google/android/apps/books/app/ReaderFragment$PlusOneAuthenticationListener;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    #calls: Lcom/google/android/apps/books/app/ReaderFragment;->getPlusOneController()Lcom/google/android/plus1/PlusOneController;
    invoke-static {v3}, Lcom/google/android/apps/books/app/ReaderFragment;->access$9300(Lcom/google/android/apps/books/app/ReaderFragment;)Lcom/google/android/plus1/PlusOneController;

    move-result-object v0

    .line 4274
    .local v0, plusOne:Lcom/google/android/plus1/PlusOneController;
    iget-object v3, p0, Lcom/google/android/apps/books/app/ReaderFragment$PlusOneAuthenticationListener;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    #calls: Lcom/google/android/apps/books/app/ReaderFragment;->getPlusOneUrl()Landroid/net/Uri;
    invoke-static {v3}, Lcom/google/android/apps/books/app/ReaderFragment;->access$2700(Lcom/google/android/apps/books/app/ReaderFragment;)Landroid/net/Uri;

    move-result-object v1

    .line 4275
    .local v1, plusOneUrl:Landroid/net/Uri;
    if-eqz v0, :cond_20

    if-eqz v1, :cond_20

    .line 4276
    const/4 v3, 0x1

    new-array v3, v3, [Landroid/net/Uri;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {v3}, Lcom/google/common/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v2

    .line 4277
    .local v2, uris:Ljava/util/Set;,"Ljava/util/Set<Landroid/net/Uri;>;"
    invoke-virtual {v0}, Lcom/google/android/plus1/PlusOneController;->refreshAccountStatus()V

    .line 4278
    invoke-virtual {v0, v2}, Lcom/google/android/plus1/PlusOneController;->refreshPlusOnes(Ljava/util/Set;)V

    .line 4280
    .end local v2           #uris:Ljava/util/Set;,"Ljava/util/Set<Landroid/net/Uri;>;"
    :cond_20
    return-void
.end method
