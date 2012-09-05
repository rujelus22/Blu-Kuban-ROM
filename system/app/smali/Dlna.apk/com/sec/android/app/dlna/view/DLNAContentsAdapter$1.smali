.class Lcom/sec/android/app/dlna/view/DLNAContentsAdapter$1;
.super Ljava/lang/Object;
.source "DLNAContentsAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;->CreateDeviceIconThread(Lcom/samsung/api/DeviceItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;

.field final synthetic val$icon:Ljava/util/HashMap;

.field final synthetic val$item:Lcom/samsung/api/DeviceItem;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;Lcom/samsung/api/DeviceItem;Ljava/util/HashMap;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 569
    iput-object p1, p0, Lcom/sec/android/app/dlna/view/DLNAContentsAdapter$1;->this$0:Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;

    iput-object p2, p0, Lcom/sec/android/app/dlna/view/DLNAContentsAdapter$1;->val$item:Lcom/samsung/api/DeviceItem;

    iput-object p3, p0, Lcom/sec/android/app/dlna/view/DLNAContentsAdapter$1;->val$icon:Ljava/util/HashMap;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 572
    const/4 v3, 0x0

    .line 573
    .local v3, icon_path:Ljava/lang/String;
    iget-object v4, p0, Lcom/sec/android/app/dlna/view/DLNAContentsAdapter$1;->val$item:Lcom/samsung/api/DeviceItem;

    invoke-virtual {v4}, Lcom/samsung/api/DeviceItem;->getFriendlyName()Ljava/lang/String;

    move-result-object v2

    .line 574
    .local v2, device_name:Ljava/lang/String;
    iget-object v4, p0, Lcom/sec/android/app/dlna/view/DLNAContentsAdapter$1;->val$icon:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 575
    .local v0, check_icon:Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_38

    .line 576
    iget-object v4, p0, Lcom/sec/android/app/dlna/view/DLNAContentsAdapter$1;->val$item:Lcom/samsung/api/DeviceItem;

    invoke-virtual {v4}, Lcom/samsung/api/DeviceItem;->getIconList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x3

    if-lt v4, v5, :cond_39

    .line 577
    iget-object v4, p0, Lcom/sec/android/app/dlna/view/DLNAContentsAdapter$1;->val$item:Lcom/samsung/api/DeviceItem;

    invoke-virtual {v4}, Lcom/samsung/api/DeviceItem;->getIconList()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x2

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #icon_path:Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 580
    .restart local v3       #icon_path:Ljava/lang/String;
    :goto_2b
    iget-object v4, p0, Lcom/sec/android/app/dlna/view/DLNAContentsAdapter$1;->this$0:Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;

    #calls: Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;->setDeviceIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    invoke-static {v4, v3}, Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;->access$000(Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 581
    .local v1, devIcon:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_38

    .line 582
    iget-object v4, p0, Lcom/sec/android/app/dlna/view/DLNAContentsAdapter$1;->val$icon:Ljava/util/HashMap;

    invoke-virtual {v4, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 585
    .end local v1           #devIcon:Landroid/graphics/drawable/Drawable;
    :cond_38
    return-void

    .line 579
    :cond_39
    iget-object v4, p0, Lcom/sec/android/app/dlna/view/DLNAContentsAdapter$1;->val$item:Lcom/samsung/api/DeviceItem;

    invoke-virtual {v4}, Lcom/samsung/api/DeviceItem;->getFirstIcon()Ljava/lang/String;

    move-result-object v3

    goto :goto_2b
.end method
