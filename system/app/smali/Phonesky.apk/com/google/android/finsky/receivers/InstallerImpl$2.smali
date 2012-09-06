.class Lcom/google/android/finsky/receivers/InstallerImpl$2;
.super Ljava/lang/Object;
.source "InstallerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/receivers/InstallerImpl;->notifyListeners(Ljava/lang/String;Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/receivers/InstallerImpl;

.field final synthetic val$event:Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$statusCode:I


# direct methods
.method constructor <init>(Lcom/google/android/finsky/receivers/InstallerImpl;Ljava/lang/String;Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;I)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 620
    iput-object p1, p0, Lcom/google/android/finsky/receivers/InstallerImpl$2;->this$0:Lcom/google/android/finsky/receivers/InstallerImpl;

    iput-object p2, p0, Lcom/google/android/finsky/receivers/InstallerImpl$2;->val$packageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/finsky/receivers/InstallerImpl$2;->val$event:Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;

    iput p4, p0, Lcom/google/android/finsky/receivers/InstallerImpl$2;->val$statusCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 623
    iget-object v4, p0, Lcom/google/android/finsky/receivers/InstallerImpl$2;->this$0:Lcom/google/android/finsky/receivers/InstallerImpl;

    #getter for: Lcom/google/android/finsky/receivers/InstallerImpl;->mListeners:Ljava/util/List;
    invoke-static {v4}, Lcom/google/android/finsky/receivers/InstallerImpl;->access$500(Lcom/google/android/finsky/receivers/InstallerImpl;)Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/finsky/utils/Lists;->newArrayList(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v3

    .line 624
    .local v3, listeners:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/installer/InstallerListener;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/installer/InstallerListener;

    .line 626
    .local v2, listener:Lcom/google/android/finsky/installer/InstallerListener;
    :try_start_1a
    iget-object v4, p0, Lcom/google/android/finsky/receivers/InstallerImpl$2;->val$packageName:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/finsky/receivers/InstallerImpl$2;->val$event:Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;

    iget v6, p0, Lcom/google/android/finsky/receivers/InstallerImpl$2;->val$statusCode:I

    invoke-interface {v2, v4, v5, v6}, Lcom/google/android/finsky/installer/InstallerListener;->onInstallPackageEvent(Ljava/lang/String;Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;I)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_23} :catch_24

    goto :goto_e

    .line 627
    :catch_24
    move-exception v0

    .line 628
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "Exception caught in InstallerListener"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0, v4, v5}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_e

    .line 631
    .end local v0           #e:Ljava/lang/Exception;
    .end local v2           #listener:Lcom/google/android/finsky/installer/InstallerListener;
    :cond_2e
    return-void
.end method
