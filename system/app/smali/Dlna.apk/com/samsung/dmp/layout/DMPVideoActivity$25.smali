.class Lcom/samsung/dmp/layout/DMPVideoActivity$25;
.super Ljava/lang/Object;
.source "DMPVideoActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/dmp/layout/DMPVideoActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;


# direct methods
.method constructor <init>(Lcom/samsung/dmp/layout/DMPVideoActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 2224
    iput-object p1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$25;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 4
    .parameter "dialog"

    .prologue
    .line 2227
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$25;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    const/4 v1, 0x0

    #setter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->showThePopup:Z
    invoke-static {v0, v1}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$3302(Lcom/samsung/dmp/layout/DMPVideoActivity;Z)Z

    .line 2228
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$25;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #calls: Lcom/samsung/dmp/layout/DMPVideoActivity;->wifiDisconnected()V
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$6200(Lcom/samsung/dmp/layout/DMPVideoActivity;)V

    .line 2229
    return-void
.end method
