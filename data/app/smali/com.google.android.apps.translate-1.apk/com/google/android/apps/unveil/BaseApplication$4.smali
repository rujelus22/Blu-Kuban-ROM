.class Lcom/google/android/apps/unveil/BaseApplication$4;
.super Ljava/lang/Object;
.source "BaseApplication.java"

# interfaces
.implements Lcom/google/android/apps/unveil/env/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/unveil/BaseApplication;->getFullUserAgent()Lcom/google/android/apps/unveil/env/Provider;
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
        "Ljava/lang/String;",
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
    .line 493
    iput-object p1, p0, Lcom/google/android/apps/unveil/BaseApplication$4;->this$0:Lcom/google/android/apps/unveil/BaseApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 493
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/BaseApplication$4;->get()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/lang/String;
    .registers 5

    .prologue
    .line 496
    const-string v0, "%s %s/%s; gzip"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/apps/unveil/BaseApplication$4;->this$0:Lcom/google/android/apps/unveil/BaseApplication;

    #calls: Lcom/google/android/apps/unveil/BaseApplication;->getBaseUserAgent()Ljava/lang/String;
    invoke-static {v3}, Lcom/google/android/apps/unveil/BaseApplication;->access$100(Lcom/google/android/apps/unveil/BaseApplication;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "GoogleGoggles-Android"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/android/apps/unveil/BaseApplication$4;->this$0:Lcom/google/android/apps/unveil/BaseApplication;

    invoke-static {v3}, Lcom/google/android/apps/unveil/env/InfoProvider;->getClientVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
