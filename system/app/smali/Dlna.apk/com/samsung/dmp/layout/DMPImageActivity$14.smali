.class Lcom/samsung/dmp/layout/DMPImageActivity$14;
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
    .line 1117
    iput-object p1, p0, Lcom/samsung/dmp/layout/DMPImageActivity$14;->this$0:Lcom/samsung/dmp/layout/DMPImageActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3
    .parameter "dialog"

    .prologue
    .line 1120
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPImageActivity$14;->this$0:Lcom/samsung/dmp/layout/DMPImageActivity;

    #calls: Lcom/samsung/dmp/layout/DMPImageActivity;->wifiDisconnected()V
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPImageActivity;->access$2400(Lcom/samsung/dmp/layout/DMPImageActivity;)V

    .line 1121
    return-void
.end method
