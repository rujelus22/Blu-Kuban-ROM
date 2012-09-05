.class Lcom/sec/android/app/twlauncher/SamsungWidgetPreview$3;
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
    .line 140
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreview$3;->this$0:Lcom/sec/android/app/twlauncher/SamsungWidgetPreview;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter "view"

    .prologue
    .line 142
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreview$3;->this$0:Lcom/sec/android/app/twlauncher/SamsungWidgetPreview;

    #getter for: Lcom/sec/android/app/twlauncher/SamsungWidgetPreview;->mPreview:Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;
    invoke-static {v2}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreview;->access$300(Lcom/sec/android/app/twlauncher/SamsungWidgetPreview;)Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;

    move-result-object v2

    if-eqz v2, :cond_35

    .line 143
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreview$3;->this$0:Lcom/sec/android/app/twlauncher/SamsungWidgetPreview;

    #getter for: Lcom/sec/android/app/twlauncher/SamsungWidgetPreview;->mPreview:Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;
    invoke-static {v2}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreview;->access$300(Lcom/sec/android/app/twlauncher/SamsungWidgetPreview;)Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->getCurrentScreen()I

    move-result v0

    .line 144
    .local v0, current:I
    move v1, v0

    .line 145
    .local v1, end:I
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreview$3;->this$0:Lcom/sec/android/app/twlauncher/SamsungWidgetPreview;

    #getter for: Lcom/sec/android/app/twlauncher/SamsungWidgetPreview;->mPreviewMode:I
    invoke-static {v2}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreview;->access$100(Lcom/sec/android/app/twlauncher/SamsungWidgetPreview;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_36

    .line 146
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreview$3;->this$0:Lcom/sec/android/app/twlauncher/SamsungWidgetPreview;

    #getter for: Lcom/sec/android/app/twlauncher/SamsungWidgetPreview;->mList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreview;->access$400(Lcom/sec/android/app/twlauncher/SamsungWidgetPreview;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 150
    :cond_26
    :goto_26
    add-int/lit8 v2, v0, 0x1

    if-ge v2, v1, :cond_35

    .line 151
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreview$3;->this$0:Lcom/sec/android/app/twlauncher/SamsungWidgetPreview;

    #getter for: Lcom/sec/android/app/twlauncher/SamsungWidgetPreview;->mPreview:Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;
    invoke-static {v2}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreview;->access$300(Lcom/sec/android/app/twlauncher/SamsungWidgetPreview;)Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;

    move-result-object v2

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->snapToScreen(I)V

    .line 153
    .end local v0           #current:I
    .end local v1           #end:I
    :cond_35
    return-void

    .line 147
    .restart local v0       #current:I
    .restart local v1       #end:I
    :cond_36
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreview$3;->this$0:Lcom/sec/android/app/twlauncher/SamsungWidgetPreview;

    #getter for: Lcom/sec/android/app/twlauncher/SamsungWidgetPreview;->mPreviewMode:I
    invoke-static {v2}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreview;->access$100(Lcom/sec/android/app/twlauncher/SamsungWidgetPreview;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_26

    .line 148
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreview$3;->this$0:Lcom/sec/android/app/twlauncher/SamsungWidgetPreview;

    #getter for: Lcom/sec/android/app/twlauncher/SamsungWidgetPreview;->mAppWidgetList:Ljava/util/List;
    invoke-static {v2}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreview;->access$500(Lcom/sec/android/app/twlauncher/SamsungWidgetPreview;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_26
.end method
