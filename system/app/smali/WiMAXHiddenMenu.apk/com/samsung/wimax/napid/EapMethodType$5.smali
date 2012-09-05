.class Lcom/samsung/wimax/napid/EapMethodType$5;
.super Ljava/lang/Object;
.source "EapMethodType.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wimax/napid/EapMethodType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/wimax/napid/EapMethodType;


# direct methods
.method constructor <init>(Lcom/samsung/wimax/napid/EapMethodType;)V
    .registers 2
    .parameter

    .prologue
    .line 958
    iput-object p1, p0, Lcom/samsung/wimax/napid/EapMethodType$5;->this$0:Lcom/samsung/wimax/napid/EapMethodType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "arg0"

    .prologue
    .line 961
    iget-object v1, p0, Lcom/samsung/wimax/napid/EapMethodType$5;->this$0:Lcom/samsung/wimax/napid/EapMethodType;

    sget-object v2, Lcom/samsung/wimax/napid/EapMethodType$Type;->USER_WRT:Lcom/samsung/wimax/napid/EapMethodType$Type;

    iput-object v2, v1, Lcom/samsung/wimax/napid/EapMethodType;->type:Lcom/samsung/wimax/napid/EapMethodType$Type;

    .line 962
    iget-object v1, p0, Lcom/samsung/wimax/napid/EapMethodType$5;->this$0:Lcom/samsung/wimax/napid/EapMethodType;

    #getter for: Lcom/samsung/wimax/napid/EapMethodType;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/samsung/wimax/napid/EapMethodType;->access$1600(Lcom/samsung/wimax/napid/EapMethodType;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 963
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/samsung/wimax/napid/EapMethodType$5;->this$0:Lcom/samsung/wimax/napid/EapMethodType;

    iget-object v1, v1, Lcom/samsung/wimax/napid/EapMethodType;->eapUsrIdEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 964
    iget-object v1, p0, Lcom/samsung/wimax/napid/EapMethodType$5;->this$0:Lcom/samsung/wimax/napid/EapMethodType;

    #getter for: Lcom/samsung/wimax/napid/EapMethodType;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/samsung/wimax/napid/EapMethodType;->access$1600(Lcom/samsung/wimax/napid/EapMethodType;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 966
    iget-object v1, p0, Lcom/samsung/wimax/napid/EapMethodType$5;->this$0:Lcom/samsung/wimax/napid/EapMethodType;

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Lcom/samsung/wimax/napid/EapMethodType;->dismissDialog(I)V

    .line 967
    return-void
.end method
