.class Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList$3;
.super Ljava/lang/Object;
.source "PopUpSearchDeviceList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;)V
    .registers 2
    .parameter

    .prologue
    .line 382
    iput-object p1, p0, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList$3;->this$0:Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 385
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList$3;->this$0:Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->refreshList()V

    .line 386
    return-void
.end method
