.class public Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountObserver;
.super Ljava/lang/Object;
.source "UinboxAccountObserver.java"


# instance fields
.field mContext:Landroid/content/Context;

.field mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager$ISocialHubAccountChangeListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "ctx"

    .prologue
    const/4 v0, 0x0

    .line 22
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountObserver;->mList:Ljava/util/ArrayList;

    .line 19
    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountObserver;->mContext:Landroid/content/Context;

    .line 23
    iput-object p1, p0, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountObserver;->mContext:Landroid/content/Context;

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountObserver;->mList:Ljava/util/ArrayList;

    .line 25
    return-void
.end method


# virtual methods
.method public notifyChanged(Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager$SocialHubAccountInfo;)V
    .registers 7
    .parameter "info"

    .prologue
    .line 32
    iget-object v2, p0, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountObserver;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager$ISocialHubAccountChangeListener;

    .line 34
    .local v1, listener:Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager$ISocialHubAccountChangeListener;
    invoke-interface {v1, p1}, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager$ISocialHubAccountChangeListener;->onChangeAccount(Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager$SocialHubAccountInfo;)V

    goto :goto_6

    .line 36
    .end local v1           #listener:Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager$ISocialHubAccountChangeListener;
    :cond_16
    const-string v2, "UinboxAccountObserver"

    const-string v3, "notifyChanged()"

    const-string v4, ""

    invoke-static {v2, v3, v4}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public registerObserver(Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager$ISocialHubAccountChangeListener;)V
    .registers 7
    .parameter "listener"

    .prologue
    .line 47
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountObserver;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    const-string v1, "UinboxAccountObserver"

    const-string v2, "registerObserver()"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "instance = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountObserver;->mList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_25} :catch_26

    .line 54
    :goto_25
    return-void

    .line 50
    :catch_26
    move-exception v0

    .line 52
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "UinboxAccountObserver"

    const-string v2, "registerObserver()"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_25
.end method

.method public unregisterAllObserver()V
    .registers 6

    .prologue
    .line 80
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountObserver;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 81
    const-string v1, "UinboxAccountObserver"

    const-string v2, "unregisterObserver()"

    const-string v3, "unregister all observer!!!"

    invoke-static {v1, v2, v3}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_f

    .line 87
    :goto_e
    return-void

    .line 83
    :catch_f
    move-exception v0

    .line 85
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "UinboxAccountObserver"

    const-string v2, "unregisterAllObserver()"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e
.end method

.method public unregisterObserver(Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager$ISocialHubAccountChangeListener;)V
    .registers 7
    .parameter "listener"

    .prologue
    .line 64
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountObserver;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 65
    const-string v1, "UinboxAccountObserver"

    const-string v2, "unregisterObserver()"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "instance = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountObserver;->mList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_25} :catch_26

    .line 71
    :goto_25
    return-void

    .line 67
    :catch_26
    move-exception v0

    .line 69
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "UinboxAccountObserver"

    const-string v2, "unregisterObserver()"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_25
.end method
