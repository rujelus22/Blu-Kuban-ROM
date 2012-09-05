.class Lcom/samsung/dmhiddenmenu/OMADM_Settings_2$Restore$2;
.super Ljava/lang/Object;
.source "OMADM_Settings_2.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/dmhiddenmenu/OMADM_Settings_2$Restore;->onClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/dmhiddenmenu/OMADM_Settings_2$Restore;


# direct methods
.method constructor <init>(Lcom/samsung/dmhiddenmenu/OMADM_Settings_2$Restore;)V
    .registers 2
    .parameter

    .prologue
    .line 336
    iput-object p1, p0, Lcom/samsung/dmhiddenmenu/OMADM_Settings_2$Restore$2;->this$1:Lcom/samsung/dmhiddenmenu/OMADM_Settings_2$Restore;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "v"
    .parameter "id"

    .prologue
    .line 338
    iget-object v0, p0, Lcom/samsung/dmhiddenmenu/OMADM_Settings_2$Restore$2;->this$1:Lcom/samsung/dmhiddenmenu/OMADM_Settings_2$Restore;

    iget-object v0, v0, Lcom/samsung/dmhiddenmenu/OMADM_Settings_2$Restore;->this$0:Lcom/samsung/dmhiddenmenu/OMADM_Settings_2;

    #calls: Lcom/samsung/dmhiddenmenu/OMADM_Settings_2;->restoreIPC()V
    invoke-static {v0}, Lcom/samsung/dmhiddenmenu/OMADM_Settings_2;->access$300(Lcom/samsung/dmhiddenmenu/OMADM_Settings_2;)V

    .line 339
    return-void
.end method
