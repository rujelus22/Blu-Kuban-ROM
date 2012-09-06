.class Lcom/google/android/apps/unveil/BaseApplication$3;
.super Ljava/lang/Object;
.source "BaseApplication.java"

# interfaces
.implements Lcom/google/android/apps/unveil/env/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/unveil/BaseApplication;->getConnector()Lcom/google/android/apps/unveil/network/AbstractConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/apps/unveil/env/Provider",
        "<",
        "Ljava/net/URL;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/unveil/BaseApplication;


# direct methods
.method constructor <init>(Lcom/google/android/apps/unveil/BaseApplication;)V
    .registers 2
    .parameter

    .prologue
    .line 206
    iput-object p1, p0, Lcom/google/android/apps/unveil/BaseApplication$3;->this$0:Lcom/google/android/apps/unveil/BaseApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 206
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/BaseApplication$3;->get()Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/net/URL;
    .registers 2

    .prologue
    .line 209
    iget-object v0, p0, Lcom/google/android/apps/unveil/BaseApplication$3;->this$0:Lcom/google/android/apps/unveil/BaseApplication;

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/BaseApplication;->getFrontendUrl()Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method
