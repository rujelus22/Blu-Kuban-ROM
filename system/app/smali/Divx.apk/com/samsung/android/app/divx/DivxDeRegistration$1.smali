.class Lcom/samsung/android/app/divx/DivxDeRegistration$1;
.super Ljava/lang/Object;
.source "DivxDeRegistration.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/divx/DivxDeRegistration;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/divx/DivxDeRegistration;

.field final synthetic val$drmClient:Landroid/drm/DrmManagerClient;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/divx/DivxDeRegistration;Landroid/drm/DrmManagerClient;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/samsung/android/app/divx/DivxDeRegistration$1;->this$0:Lcom/samsung/android/app/divx/DivxDeRegistration;

    iput-object p2, p0, Lcom/samsung/android/app/divx/DivxDeRegistration$1;->val$drmClient:Landroid/drm/DrmManagerClient;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/samsung/android/app/divx/DivxDeRegistration$1;->this$0:Lcom/samsung/android/app/divx/DivxDeRegistration;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/android/app/divx/DivxDeRegistration$1;->this$0:Lcom/samsung/android/app/divx/DivxDeRegistration;

    const-class v3, Lcom/samsung/android/app/divx/DivxRegistration;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/divx/DivxDeRegistration;->startActivity(Landroid/content/Intent;)V

    .line 57
    iget-object v0, p0, Lcom/samsung/android/app/divx/DivxDeRegistration$1;->val$drmClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v0}, Landroid/drm/DrmManagerClient;->deInitialize()V

    .line 58
    iget-object v0, p0, Lcom/samsung/android/app/divx/DivxDeRegistration$1;->this$0:Lcom/samsung/android/app/divx/DivxDeRegistration;

    invoke-virtual {v0}, Lcom/samsung/android/app/divx/DivxDeRegistration;->finish()V

    .line 59
    return-void
.end method
