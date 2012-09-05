.class Lcom/sec/android/app/twlauncher/SamsungWidgetPreview$2;
.super Ljava/lang/Object;
.source "SamsungWidgetPreview.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/twlauncher/SamsungWidgetPreview;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/twlauncher/SamsungWidgetPreview;


# direct methods
.method constructor <init>(Lcom/sec/android/app/twlauncher/SamsungWidgetPreview;)V
    .registers 2
    .parameter

    .prologue
    .line 126
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreview$2;->this$0:Lcom/sec/android/app/twlauncher/SamsungWidgetPreview;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "view"

    .prologue
    .line 128
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreview$2;->this$0:Lcom/sec/android/app/twlauncher/SamsungWidgetPreview;

    #getter for: Lcom/sec/android/app/twlauncher/SamsungWidgetPreview;->mPreview:Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;
    invoke-static {v1}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreview;->access$300(Lcom/sec/android/app/twlauncher/SamsungWidgetPreview;)Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;

    move-result-object v1

    if-eqz v1, :cond_1f

    .line 129
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreview$2;->this$0:Lcom/sec/android/app/twlauncher/SamsungWidgetPreview;

    #getter for: Lcom/sec/android/app/twlauncher/SamsungWidgetPreview;->mPreview:Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;
    invoke-static {v1}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreview;->access$300(Lcom/sec/android/app/twlauncher/SamsungWidgetPreview;)Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->getCurrentScreen()I

    move-result v0

    .line 131
    .local v0, current:I
    if-lez v0, :cond_1f

    .line 132
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreview$2;->this$0:Lcom/sec/android/app/twlauncher/SamsungWidgetPreview;

    #getter for: Lcom/sec/android/app/twlauncher/SamsungWidgetPreview;->mPreview:Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;
    invoke-static {v1}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreview;->access$300(Lcom/sec/android/app/twlauncher/SamsungWidgetPreview;)Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;

    move-result-object v1

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->snapToScreen(I)V

    .line 134
    .end local v0           #current:I
    :cond_1f
    return-void
.end method
