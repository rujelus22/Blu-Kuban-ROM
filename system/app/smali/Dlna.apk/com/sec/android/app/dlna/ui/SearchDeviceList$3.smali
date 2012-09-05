.class Lcom/sec/android/app/dlna/ui/SearchDeviceList$3;
.super Ljava/lang/Object;
.source "SearchDeviceList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dlna/ui/SearchDeviceList;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dlna/ui/SearchDeviceList;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dlna/ui/SearchDeviceList;)V
    .registers 2
    .parameter

    .prologue
    .line 266
    iput-object p1, p0, Lcom/sec/android/app/dlna/ui/SearchDeviceList$3;->this$0:Lcom/sec/android/app/dlna/ui/SearchDeviceList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 269
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/SearchDeviceList$3;->this$0:Lcom/sec/android/app/dlna/ui/SearchDeviceList;

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/ui/SearchDeviceList;->refreshList()V

    .line 270
    return-void
.end method
