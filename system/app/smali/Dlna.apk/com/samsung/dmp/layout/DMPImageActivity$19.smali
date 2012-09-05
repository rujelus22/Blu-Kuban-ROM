.class Lcom/samsung/dmp/layout/DMPImageActivity$19;
.super Ljava/lang/Object;
.source "DMPImageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/dmp/layout/DMPImageActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/dmp/layout/DMPImageActivity;


# direct methods
.method constructor <init>(Lcom/samsung/dmp/layout/DMPImageActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1187
    iput-object p1, p0, Lcom/samsung/dmp/layout/DMPImageActivity$19;->this$0:Lcom/samsung/dmp/layout/DMPImageActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 4
    .parameter "dialog"

    .prologue
    .line 1190
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPImageActivity$19;->this$0:Lcom/samsung/dmp/layout/DMPImageActivity;

    const/4 v1, 0x0

    #setter for: Lcom/samsung/dmp/layout/DMPImageActivity;->mCallEventOccured:Z
    invoke-static {v0, v1}, Lcom/samsung/dmp/layout/DMPImageActivity;->access$2502(Lcom/samsung/dmp/layout/DMPImageActivity;Z)Z

    .line 1191
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPImageActivity$19;->this$0:Lcom/samsung/dmp/layout/DMPImageActivity;

    #calls: Lcom/samsung/dmp/layout/DMPImageActivity;->wifiDisconnected()V
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPImageActivity;->access$2400(Lcom/samsung/dmp/layout/DMPImageActivity;)V

    .line 1192
    return-void
.end method
