.class Lcom/sprint/w/installer/delivery/SearchActivity$7;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/w/installer/delivery/SearchActivity;->startProcessing()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/w/installer/delivery/SearchActivity;


# direct methods
.method constructor <init>(Lcom/sprint/w/installer/delivery/SearchActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 537
    iput-object p1, p0, Lcom/sprint/w/installer/delivery/SearchActivity$7;->this$0:Lcom/sprint/w/installer/delivery/SearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 539
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/SearchActivity$7;->this$0:Lcom/sprint/w/installer/delivery/SearchActivity;

    #calls: Lcom/sprint/w/installer/delivery/SearchActivity;->processRequest()V
    invoke-static {v0}, Lcom/sprint/w/installer/delivery/SearchActivity;->access$900(Lcom/sprint/w/installer/delivery/SearchActivity;)V

    .line 540
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/SearchActivity$7;->this$0:Lcom/sprint/w/installer/delivery/SearchActivity;

    iget-object v0, v0, Lcom/sprint/w/installer/delivery/SearchActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sprint/w/installer/delivery/SearchActivity$7;->this$0:Lcom/sprint/w/installer/delivery/SearchActivity;

    iget-object v1, v1, Lcom/sprint/w/installer/delivery/SearchActivity;->mUpdateResults:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 541
    return-void
.end method
