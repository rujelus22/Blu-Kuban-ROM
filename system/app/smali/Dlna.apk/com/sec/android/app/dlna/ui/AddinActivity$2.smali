.class Lcom/sec/android/app/dlna/ui/AddinActivity$2;
.super Ljava/lang/Object;
.source "AddinActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dlna/ui/AddinActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dlna/ui/AddinActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dlna/ui/AddinActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 327
    iput-object p1, p0, Lcom/sec/android/app/dlna/ui/AddinActivity$2;->this$0:Lcom/sec/android/app/dlna/ui/AddinActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 329
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinActivity$2;->this$0:Lcom/sec/android/app/dlna/ui/AddinActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/AddinActivity;->IsChangePlayer:Z
    invoke-static {v0}, Lcom/sec/android/app/dlna/ui/AddinActivity;->access$000(Lcom/sec/android/app/dlna/ui/AddinActivity;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 330
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinActivity$2;->this$0:Lcom/sec/android/app/dlna/ui/AddinActivity;

    #calls: Lcom/sec/android/app/dlna/ui/AddinActivity;->destroyAllShare()V
    invoke-static {v0}, Lcom/sec/android/app/dlna/ui/AddinActivity;->access$100(Lcom/sec/android/app/dlna/ui/AddinActivity;)V

    .line 331
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinActivity$2;->this$0:Lcom/sec/android/app/dlna/ui/AddinActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/ui/AddinActivity;->finish()V

    .line 335
    :goto_12
    return-void

    .line 333
    :cond_13
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinActivity$2;->this$0:Lcom/sec/android/app/dlna/ui/AddinActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/ui/AddinActivity;->finish()V

    goto :goto_12
.end method
