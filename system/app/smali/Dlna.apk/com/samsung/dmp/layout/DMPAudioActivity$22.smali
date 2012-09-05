.class Lcom/samsung/dmp/layout/DMPAudioActivity$22;
.super Ljava/lang/Object;
.source "DMPAudioActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/dmp/layout/DMPAudioActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;


# direct methods
.method constructor <init>(Lcom/samsung/dmp/layout/DMPAudioActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1665
    iput-object p1, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$22;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1667
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$22;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    const/4 v1, 0x0

    #setter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->showThePopup:Z
    invoke-static {v0, v1}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$1402(Lcom/samsung/dmp/layout/DMPAudioActivity;Z)Z

    .line 1668
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$22;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #calls: Lcom/samsung/dmp/layout/DMPAudioActivity;->wifiDisconnected()V
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$3800(Lcom/samsung/dmp/layout/DMPAudioActivity;)V

    .line 1669
    return-void
.end method
