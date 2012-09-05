.class Lcom/android/settings/motion/TabletWaveServiceSettings$5;
.super Ljava/lang/Object;
.source "TabletWaveServiceSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/motion/TabletWaveServiceSettings;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/motion/TabletWaveServiceSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/motion/TabletWaveServiceSettings;)V
    .registers 2
    .parameter

    .prologue
    .line 123
    iput-object p1, p0, Lcom/android/settings/motion/TabletWaveServiceSettings$5;->this$0:Lcom/android/settings/motion/TabletWaveServiceSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "view"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/settings/motion/TabletWaveServiceSettings$5;->this$0:Lcom/android/settings/motion/TabletWaveServiceSettings;

    #calls: Lcom/android/settings/motion/TabletWaveServiceSettings;->startGalleryAnimation()V
    invoke-static {v0}, Lcom/android/settings/motion/TabletWaveServiceSettings;->access$800(Lcom/android/settings/motion/TabletWaveServiceSettings;)V

    .line 126
    return-void
.end method
