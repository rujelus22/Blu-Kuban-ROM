.class Lcom/sprint/w/installer/PackInstaller$19;
.super Ljava/lang/Object;
.source "PackInstaller.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/w/installer/PackInstaller;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/w/installer/PackInstaller;


# direct methods
.method constructor <init>(Lcom/sprint/w/installer/PackInstaller;)V
    .registers 2
    .parameter

    .prologue
    .line 2053
    iput-object p1, p0, Lcom/sprint/w/installer/PackInstaller$19;->this$0:Lcom/sprint/w/installer/PackInstaller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 2056
    iget-object v0, p0, Lcom/sprint/w/installer/PackInstaller$19;->this$0:Lcom/sprint/w/installer/PackInstaller;

    #getter for: Lcom/sprint/w/installer/PackInstaller;->mState:I
    invoke-static {v0}, Lcom/sprint/w/installer/PackInstaller;->access$2100(Lcom/sprint/w/installer/PackInstaller;)I

    move-result v0

    packed-switch v0, :pswitch_data_28

    .line 2067
    :goto_9
    return-void

    .line 2058
    :pswitch_a
    iget-object v0, p0, Lcom/sprint/w/installer/PackInstaller$19;->this$0:Lcom/sprint/w/installer/PackInstaller;

    iget-object v1, p0, Lcom/sprint/w/installer/PackInstaller$19;->this$0:Lcom/sprint/w/installer/PackInstaller;

    iget-object v1, v1, Lcom/sprint/w/installer/PackInstaller;->mUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/sprint/w/installer/PackInstaller$19;->this$0:Lcom/sprint/w/installer/PackInstaller;

    iget-object v2, v2, Lcom/sprint/w/installer/PackInstaller;->mName:Ljava/lang/String;

    #calls: Lcom/sprint/w/installer/PackInstaller;->downloadServicePack(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/sprint/w/installer/PackInstaller;->access$2200(Lcom/sprint/w/installer/PackInstaller;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 2061
    :pswitch_18
    iget-object v0, p0, Lcom/sprint/w/installer/PackInstaller$19;->this$0:Lcom/sprint/w/installer/PackInstaller;

    iget-object v1, p0, Lcom/sprint/w/installer/PackInstaller$19;->this$0:Lcom/sprint/w/installer/PackInstaller;

    iget-object v1, v1, Lcom/sprint/w/installer/PackInstaller;->mPack:Lcom/sprint/w/installer/psi/ServicePack;

    #calls: Lcom/sprint/w/installer/PackInstaller;->preparePsiDownload(Lcom/sprint/w/installer/psi/ServicePack;)V
    invoke-static {v0, v1}, Lcom/sprint/w/installer/PackInstaller;->access$2300(Lcom/sprint/w/installer/PackInstaller;Lcom/sprint/w/installer/psi/ServicePack;)V

    goto :goto_9

    .line 2064
    :pswitch_22
    iget-object v0, p0, Lcom/sprint/w/installer/PackInstaller$19;->this$0:Lcom/sprint/w/installer/PackInstaller;

    #calls: Lcom/sprint/w/installer/PackInstaller;->installServicePack()V
    invoke-static {v0}, Lcom/sprint/w/installer/PackInstaller;->access$900(Lcom/sprint/w/installer/PackInstaller;)V

    goto :goto_9

    .line 2056
    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_18
        :pswitch_a
        :pswitch_22
    .end packed-switch
.end method
