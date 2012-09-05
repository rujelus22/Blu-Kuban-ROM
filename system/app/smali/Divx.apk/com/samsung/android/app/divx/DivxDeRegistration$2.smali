.class Lcom/samsung/android/app/divx/DivxDeRegistration$2;
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
    .line 64
    iput-object p1, p0, Lcom/samsung/android/app/divx/DivxDeRegistration$2;->this$0:Lcom/samsung/android/app/divx/DivxDeRegistration;

    iput-object p2, p0, Lcom/samsung/android/app/divx/DivxDeRegistration$2;->val$drmClient:Landroid/drm/DrmManagerClient;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "arg0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/samsung/android/app/divx/DivxDeRegistration$2;->val$drmClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v0}, Landroid/drm/DrmManagerClient;->deInitialize()V

    .line 67
    iget-object v0, p0, Lcom/samsung/android/app/divx/DivxDeRegistration$2;->this$0:Lcom/samsung/android/app/divx/DivxDeRegistration;

    invoke-virtual {v0}, Lcom/samsung/android/app/divx/DivxDeRegistration;->finish()V

    .line 68
    return-void
.end method
