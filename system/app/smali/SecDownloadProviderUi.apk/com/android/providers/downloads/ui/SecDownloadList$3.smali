.class Lcom/android/providers/downloads/ui/SecDownloadList$3;
.super Ljava/lang/Object;
.source "SecDownloadList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/providers/downloads/ui/SecDownloadList;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/downloads/ui/SecDownloadList;


# direct methods
.method constructor <init>(Lcom/android/providers/downloads/ui/SecDownloadList;)V
    .registers 2
    .parameter

    .prologue
    .line 288
    iput-object p1, p0, Lcom/android/providers/downloads/ui/SecDownloadList$3;->this$0:Lcom/android/providers/downloads/ui/SecDownloadList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 291
    iget-object v0, p0, Lcom/android/providers/downloads/ui/SecDownloadList$3;->this$0:Lcom/android/providers/downloads/ui/SecDownloadList;

    #calls: Lcom/android/providers/downloads/ui/SecDownloadList;->promptClearList()V
    invoke-static {v0}, Lcom/android/providers/downloads/ui/SecDownloadList;->access$700(Lcom/android/providers/downloads/ui/SecDownloadList;)V

    .line 292
    return-void
.end method
