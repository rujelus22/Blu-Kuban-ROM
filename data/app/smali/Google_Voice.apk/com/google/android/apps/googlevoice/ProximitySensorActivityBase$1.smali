.class Lcom/google/android/apps/googlevoice/ProximitySensorActivityBase$1;
.super Ljava/lang/Object;
.source "ProximitySensorActivityBase.java"

# interfaces
.implements Lcom/google/android/apps/googlevoice/ProximitySensorManager$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/googlevoice/ProximitySensorActivityBase;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/googlevoice/ProximitySensorActivityBase;


# direct methods
.method constructor <init>(Lcom/google/android/apps/googlevoice/ProximitySensorActivityBase;)V
    .registers 2
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/ProximitySensorActivityBase$1;->this$0:Lcom/google/android/apps/googlevoice/ProximitySensorActivityBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFar()V
    .registers 4

    .prologue
    .line 74
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/ProximitySensorActivityBase$1;->this$0:Lcom/google/android/apps/googlevoice/ProximitySensorActivityBase;

    sget v2, Lcom/google/android/apps/googlevoice/R$id;->blank:I

    invoke-virtual {v1, v2}, Lcom/google/android/apps/googlevoice/ProximitySensorActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 75
    .local v0, blankView:Landroid/view/View;
    if-eqz v0, :cond_15

    .line 76
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/ProximitySensorActivityBase$1;->this$0:Lcom/google/android/apps/googlevoice/ProximitySensorActivityBase;

    const/4 v2, 0x0

    #calls: Lcom/google/android/apps/googlevoice/ProximitySensorActivityBase;->setFullscreen(Z)V
    invoke-static {v1, v2}, Lcom/google/android/apps/googlevoice/ProximitySensorActivityBase;->access$000(Lcom/google/android/apps/googlevoice/ProximitySensorActivityBase;Z)V

    .line 77
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 79
    :cond_15
    return-void
.end method

.method public onNear()V
    .registers 4

    .prologue
    .line 65
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/ProximitySensorActivityBase$1;->this$0:Lcom/google/android/apps/googlevoice/ProximitySensorActivityBase;

    sget v2, Lcom/google/android/apps/googlevoice/R$id;->blank:I

    invoke-virtual {v1, v2}, Lcom/google/android/apps/googlevoice/ProximitySensorActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 66
    .local v0, blankView:Landroid/view/View;
    if-eqz v0, :cond_14

    .line 67
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 68
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/ProximitySensorActivityBase$1;->this$0:Lcom/google/android/apps/googlevoice/ProximitySensorActivityBase;

    const/4 v2, 0x1

    #calls: Lcom/google/android/apps/googlevoice/ProximitySensorActivityBase;->setFullscreen(Z)V
    invoke-static {v1, v2}, Lcom/google/android/apps/googlevoice/ProximitySensorActivityBase;->access$000(Lcom/google/android/apps/googlevoice/ProximitySensorActivityBase;Z)V

    .line 70
    :cond_14
    return-void
.end method
