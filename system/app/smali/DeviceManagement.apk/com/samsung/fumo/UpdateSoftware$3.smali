.class Lcom/samsung/fumo/UpdateSoftware$3;
.super Ljava/lang/Object;
.source "UpdateSoftware.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/fumo/UpdateSoftware;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/fumo/UpdateSoftware;


# direct methods
.method constructor <init>(Lcom/samsung/fumo/UpdateSoftware;)V
    .registers 2
    .parameter

    .prologue
    .line 124
    iput-object p1, p0, Lcom/samsung/fumo/UpdateSoftware$3;->this$0:Lcom/samsung/fumo/UpdateSoftware;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 7
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 128
    const-string v0, "UpdateSoftware"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKey arg1... "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    const-string v0, "UpdateSoftware"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKey isHfaInitiated() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/fumo/UpdateSoftware$3;->this$0:Lcom/samsung/fumo/UpdateSoftware;

    #getter for: Lcom/samsung/fumo/UpdateSoftware;->hfaPrlFumoUpdate:Z
    invoke-static {v2}, Lcom/samsung/fumo/UpdateSoftware;->access$000(Lcom/samsung/fumo/UpdateSoftware;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    packed-switch p2, :pswitch_data_3e

    .line 136
    const/4 v0, 0x1

    :goto_3a
    return v0

    .line 133
    :pswitch_3b
    const/4 v0, 0x0

    goto :goto_3a

    .line 130
    nop

    :pswitch_data_3e
    .packed-switch 0x3
        :pswitch_3b
        :pswitch_3b
    .end packed-switch
.end method
