.class Lcom/android/settings/motion/TabletTiltServiceSettings$3;
.super Ljava/lang/Object;
.source "TabletTiltServiceSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/motion/TabletTiltServiceSettings;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/motion/TabletTiltServiceSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/motion/TabletTiltServiceSettings;)V
    .registers 2
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/settings/motion/TabletTiltServiceSettings$3;->this$0:Lcom/android/settings/motion/TabletTiltServiceSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "view"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/settings/motion/TabletTiltServiceSettings$3;->this$0:Lcom/android/settings/motion/TabletTiltServiceSettings;

    #calls: Lcom/android/settings/motion/TabletTiltServiceSettings;->startAnimation()V
    invoke-static {v0}, Lcom/android/settings/motion/TabletTiltServiceSettings;->access$400(Lcom/android/settings/motion/TabletTiltServiceSettings;)V

    .line 95
    return-void
.end method
