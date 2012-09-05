.class Lcom/samsung/fumo/SendStatus$3;
.super Ljava/lang/Object;
.source "SendStatus.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/fumo/SendStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/fumo/SendStatus;


# direct methods
.method constructor <init>(Lcom/samsung/fumo/SendStatus;)V
    .registers 2
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Lcom/samsung/fumo/SendStatus$3;->this$0:Lcom/samsung/fumo/SendStatus;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 8
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    const/4 v0, 0x1

    .line 97
    const-string v1, "SendStatus"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onKey ..... "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    packed-switch p2, :pswitch_data_28

    .line 105
    :goto_1c
    return v0

    .line 101
    :pswitch_1d
    iget-object v1, p0, Lcom/samsung/fumo/SendStatus$3;->this$0:Lcom/samsung/fumo/SendStatus;

    #getter for: Lcom/samsung/fumo/SendStatus;->mApp:Lcom/samsung/client/DMApp;
    invoke-static {v1}, Lcom/samsung/fumo/SendStatus;->access$100(Lcom/samsung/fumo/SendStatus;)Lcom/samsung/client/DMApp;

    move-result-object v1

    iput-boolean v0, v1, Lcom/samsung/client/DMApp;->userCancel:Z

    .line 102
    const/4 v0, 0x0

    goto :goto_1c

    .line 98
    nop

    :pswitch_data_28
    .packed-switch 0x3
        :pswitch_1d
        :pswitch_1d
    .end packed-switch
.end method
