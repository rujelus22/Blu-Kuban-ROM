.class Lcom/samsung/dmhiddenmenu/OMADM_Settings$2;
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
    .line 79
    iput-object p1, p0, Lcom/samsung/dmhiddenmenu/OMADM_Settings$2;->this$0:Lcom/samsung/dmhiddenmenu/OMADM_Settings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/samsung/dmhiddenmenu/OMADM_Settings$2;->this$0:Lcom/samsung/dmhiddenmenu/OMADM_Settings;

    invoke-virtual {v0}, Lcom/samsung/dmhiddenmenu/OMADM_Settings;->finish()V

    .line 82
    return-void
.end method
