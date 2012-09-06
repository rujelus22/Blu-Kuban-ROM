.class Lcom/google/android/apps/unveil/BaseApplication$5;
.super Ljava/lang/Object;
.source "BaseApplication.java"

# interfaces
.implements Lcom/google/android/apps/unveil/env/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/unveil/BaseApplication;->getConfigurationProvider()Lcom/google/android/apps/unveil/env/Provider;
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
        "Landroid/content/res/Configuration;",
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
    .line 638
    iput-object p1, p0, Lcom/google/android/apps/unveil/BaseApplication$5;->this$0:Lcom/google/android/apps/unveil/BaseApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Landroid/content/res/Configuration;
    .registers 2

    .prologue
    .line 641
    iget-object v0, p0, Lcom/google/android/apps/unveil/BaseApplication$5;->this$0:Lcom/google/android/apps/unveil/BaseApplication;

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/BaseApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 638
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/BaseApplication$5;->get()Landroid/content/res/Configuration;

    move-result-object v0

    return-object v0
.end method
