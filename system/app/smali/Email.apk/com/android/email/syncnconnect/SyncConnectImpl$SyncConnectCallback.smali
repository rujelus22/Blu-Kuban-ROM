.class public abstract Lcom/android/email/syncnconnect/SyncConnectImpl$SyncConnectCallback;
.super Ljava/lang/Object;
.source "SyncConnectImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/syncnconnect/SyncConnectImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SyncConnectCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 881
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAddAccountFinished(Landroid/os/Bundle;J)V
    .registers 4
    .parameter "status"
    .parameter "accountId"

    .prologue
    .line 890
    return-void
.end method

.method public onAvailableAccountsReceived(Landroid/os/Bundle;Ljava/util/List;)V
    .registers 3
    .parameter "status"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/List",
            "<",
            "Lcom/android/email/syncnconnect/utils/SncEndpoint;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 884
    .local p2, list:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/syncnconnect/utils/SncEndpoint;>;"
    return-void
.end method

.method public onConfiguredAccountsReceived(Landroid/os/Bundle;Ljava/util/List;)V
    .registers 3
    .parameter "status"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/List",
            "<",
            "Lcom/android/email/syncnconnect/utils/SncUserEndpoint;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 887
    .local p2, list:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/syncnconnect/utils/SncUserEndpoint;>;"
    return-void
.end method

.method public onDeactivateSnc()V
    .registers 1

    .prologue
    .line 923
    return-void
.end method

.method public onDeleteAccountFinished(Landroid/os/Bundle;J)V
    .registers 4
    .parameter "status"
    .parameter "accountId"

    .prologue
    .line 896
    return-void
.end method

.method public onDeleteAccountFromWebPortal(JLjava/lang/String;)V
    .registers 4
    .parameter "accountId"
    .parameter "emailId"

    .prologue
    .line 920
    return-void
.end method

.method public onGetProfileFinished(Landroid/os/Bundle;Lcom/android/email/syncnconnect/utils/SncProfile;)V
    .registers 3
    .parameter "b"
    .parameter "sncProfile"

    .prologue
    .line 908
    return-void
.end method

.method public onModifyAccountFinished(Landroid/os/Bundle;)V
    .registers 2
    .parameter "b"

    .prologue
    .line 893
    return-void
.end method

.method public onNewMailNotificationReceived(I)V
    .registers 2
    .parameter "newMailCount"

    .prologue
    .line 917
    return-void
.end method

.method public onSyncAccountFinished(Landroid/os/Bundle;Lcom/android/email/syncnconnect/utils/SncServiceInfo;)V
    .registers 3
    .parameter "b"
    .parameter "serviceInfo"

    .prologue
    .line 905
    return-void
.end method

.method public onSyncAllReceived(Landroid/os/Bundle;Ljava/util/List;)V
    .registers 3
    .parameter "b"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/List",
            "<",
            "Lcom/android/email/syncnconnect/utils/SncServiceInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 902
    .local p2, serviceInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/syncnconnect/utils/SncServiceInfo;>;"
    return-void
.end method

.method public onTagsReceived(Landroid/os/Bundle;JLjava/util/List;)V
    .registers 5
    .parameter "status"
    .parameter "accountId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "J",
            "Ljava/util/List",
            "<",
            "Lcom/android/email/syncnconnect/utils/SncTag;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 899
    .local p4, list:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/syncnconnect/utils/SncTag;>;"
    return-void
.end method

.method public onUpdateProfileFinished(Landroid/os/Bundle;)V
    .registers 2
    .parameter "b"

    .prologue
    .line 911
    return-void
.end method

.method public onValidateTokenComplete(Landroid/os/Bundle;)V
    .registers 2
    .parameter "b"

    .prologue
    .line 914
    return-void
.end method
