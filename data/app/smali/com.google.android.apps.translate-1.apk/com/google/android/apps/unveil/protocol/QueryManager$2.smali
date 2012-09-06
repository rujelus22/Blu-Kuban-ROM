.class Lcom/google/android/apps/unveil/protocol/QueryManager$2;
.super Ljava/lang/Object;
.source "QueryManager.java"

# interfaces
.implements Lcom/google/android/apps/unveil/env/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/unveil/protocol/QueryManager;-><init>(Lcom/google/android/apps/unveil/UnveilContext;Lcom/google/android/apps/unveil/protocol/QueryManagerParams;Lcom/google/android/apps/unveil/protocol/TracingCookieFetcher;)V
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
        "Lcom/google/android/apps/unveil/env/Viewport;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$application:Lcom/google/android/apps/unveil/UnveilContext;


# direct methods
.method constructor <init>(Lcom/google/android/apps/unveil/UnveilContext;)V
    .registers 2
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/google/android/apps/unveil/protocol/QueryManager$2;->val$application:Lcom/google/android/apps/unveil/UnveilContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/google/android/apps/unveil/env/Viewport;
    .registers 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/QueryManager$2;->val$application:Lcom/google/android/apps/unveil/UnveilContext;

    invoke-interface {v0}, Lcom/google/android/apps/unveil/UnveilContext;->getViewport()Lcom/google/android/apps/unveil/env/Viewport;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/protocol/QueryManager$2;->get()Lcom/google/android/apps/unveil/env/Viewport;

    move-result-object v0

    return-object v0
.end method
