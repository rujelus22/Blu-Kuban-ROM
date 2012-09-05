.class Lcom/samsung/dmhiddenmenu/OMADM_Settings$1;
.super Ljava/lang/Object;
.source "OMADM_Settings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/dmhiddenmenu/OMADM_Settings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/dmhiddenmenu/OMADM_Settings;


# direct methods
.method constructor <init>(Lcom/samsung/dmhiddenmenu/OMADM_Settings;)V
    .registers 2
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/samsung/dmhiddenmenu/OMADM_Settings$1;->this$0:Lcom/samsung/dmhiddenmenu/OMADM_Settings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/samsung/dmhiddenmenu/OMADM_Settings$1;->this$0:Lcom/samsung/dmhiddenmenu/OMADM_Settings;

    #calls: Lcom/samsung/dmhiddenmenu/OMADM_Settings;->commitSettings()V
    invoke-static {v0}, Lcom/samsung/dmhiddenmenu/OMADM_Settings;->access$000(Lcom/samsung/dmhiddenmenu/OMADM_Settings;)V

    .line 76
    return-void
.end method
