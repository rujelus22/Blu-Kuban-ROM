.class public abstract Lcom/google/android/plus1/util/BrowserAuthenticationHelper;
.super Ljava/lang/Object;
.source "BrowserAuthenticationHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/plus1/util/BrowserAuthenticationHelper$Client;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/google/android/plus1/util/BrowserAuthenticationHelper$Client;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected mClient:Lcom/google/android/plus1/util/BrowserAuthenticationHelper$Client;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/plus1/util/BrowserAuthenticationHelper$Client;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p0, this:Lcom/google/android/plus1/util/BrowserAuthenticationHelper;,"Lcom/google/android/plus1/util/BrowserAuthenticationHelper<TT;>;"
    .local p1, client:Lcom/google/android/plus1/util/BrowserAuthenticationHelper$Client;,"TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const-string v0, "missing client"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/plus1/util/BrowserAuthenticationHelper$Client;

    iput-object v0, p0, Lcom/google/android/plus1/util/BrowserAuthenticationHelper;->mClient:Lcom/google/android/plus1/util/BrowserAuthenticationHelper$Client;

    .line 50
    return-void
.end method


# virtual methods
.method public setClient(Lcom/google/android/plus1/util/BrowserAuthenticationHelper$Client;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, this:Lcom/google/android/plus1/util/BrowserAuthenticationHelper;,"Lcom/google/android/plus1/util/BrowserAuthenticationHelper<TT;>;"
    .local p1, c:Lcom/google/android/plus1/util/BrowserAuthenticationHelper$Client;,"TT;"
    iput-object p1, p0, Lcom/google/android/plus1/util/BrowserAuthenticationHelper;->mClient:Lcom/google/android/plus1/util/BrowserAuthenticationHelper$Client;

    .line 54
    return-void
.end method
