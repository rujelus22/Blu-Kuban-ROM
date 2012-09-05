.class Lcom/samsung/dmhiddenmenu/OMADM_Settings_2$GenerateCreds$2;
.super Ljava/lang/Object;
.source "OMADM_Settings_2.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/dmhiddenmenu/OMADM_Settings_2$GenerateCreds;->onClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/dmhiddenmenu/OMADM_Settings_2$GenerateCreds;


# direct methods
.method constructor <init>(Lcom/samsung/dmhiddenmenu/OMADM_Settings_2$GenerateCreds;)V
    .registers 2
    .parameter

    .prologue
    .line 294
    iput-object p1, p0, Lcom/samsung/dmhiddenmenu/OMADM_Settings_2$GenerateCreds$2;->this$1:Lcom/samsung/dmhiddenmenu/OMADM_Settings_2$GenerateCreds;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "v"
    .parameter "id"

    .prologue
    .line 296
    iget-object v0, p0, Lcom/samsung/dmhiddenmenu/OMADM_Settings_2$GenerateCreds$2;->this$1:Lcom/samsung/dmhiddenmenu/OMADM_Settings_2$GenerateCreds;

    iget-object v0, v0, Lcom/samsung/dmhiddenmenu/OMADM_Settings_2$GenerateCreds;->this$0:Lcom/samsung/dmhiddenmenu/OMADM_Settings_2;

    #calls: Lcom/samsung/dmhiddenmenu/OMADM_Settings_2;->generateCredIPC()V
    invoke-static {v0}, Lcom/samsung/dmhiddenmenu/OMADM_Settings_2;->access$200(Lcom/samsung/dmhiddenmenu/OMADM_Settings_2;)V

    .line 297
    return-void
.end method
