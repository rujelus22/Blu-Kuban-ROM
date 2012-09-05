.class public Lcom/android/email/syncnconnect/vo/DeleteEndpointResponseVO;
.super Ljava/lang/Object;
.source "DeleteEndpointResponseVO.java"


# instance fields
.field private mErrorBundle:Landroid/os/Bundle;

.field private mUserEndpointList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/email/syncnconnect/utils/SncUserEndpoint;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 11
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/syncnconnect/vo/DeleteEndpointResponseVO;->mErrorBundle:Landroid/os/Bundle;

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/email/syncnconnect/vo/DeleteEndpointResponseVO;->mUserEndpointList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getErrorBundle()Landroid/os/Bundle;
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/email/syncnconnect/vo/DeleteEndpointResponseVO;->mErrorBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public final getUserEndpointList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/email/syncnconnect/utils/SncUserEndpoint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/email/syncnconnect/vo/DeleteEndpointResponseVO;->mUserEndpointList:Ljava/util/List;

    return-object v0
.end method

.method public setErrorBundle(Landroid/os/Bundle;)V
    .registers 2
    .parameter "errorBundle"

    .prologue
    .line 26
    iput-object p1, p0, Lcom/android/email/syncnconnect/vo/DeleteEndpointResponseVO;->mErrorBundle:Landroid/os/Bundle;

    .line 27
    return-void
.end method

.method public final setUserEndpointList(Ljava/util/List;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/email/syncnconnect/utils/SncUserEndpoint;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 18
    .local p1, userEndpointList:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/syncnconnect/utils/SncUserEndpoint;>;"
    iput-object p1, p0, Lcom/android/email/syncnconnect/vo/DeleteEndpointResponseVO;->mUserEndpointList:Ljava/util/List;

    .line 19
    return-void
.end method
