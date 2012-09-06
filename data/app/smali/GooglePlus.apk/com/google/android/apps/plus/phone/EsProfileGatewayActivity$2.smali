.class Lcom/google/android/apps/plus/phone/EsProfileGatewayActivity$2;
.super Ljava/lang/Object;
.source "EsProfileGatewayActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/phone/EsProfileGatewayActivity;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/phone/EsProfileGatewayActivity;

.field final synthetic val$circleIds:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/phone/EsProfileGatewayActivity;Ljava/util/ArrayList;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 158
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/EsProfileGatewayActivity$2;->this$0:Lcom/google/android/apps/plus/phone/EsProfileGatewayActivity;

    iput-object p2, p0, Lcom/google/android/apps/plus/phone/EsProfileGatewayActivity$2;->val$circleIds:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 162
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/EsProfileGatewayActivity$2;->this$0:Lcom/google/android/apps/plus/phone/EsProfileGatewayActivity;

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/EsProfileGatewayActivity$2;->val$circleIds:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/phone/EsProfileGatewayActivity;->setCircleMembership(Ljava/util/ArrayList;)V

    .line 163
    return-void
.end method
