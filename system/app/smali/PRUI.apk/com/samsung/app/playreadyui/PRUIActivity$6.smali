.class Lcom/samsung/app/playreadyui/PRUIActivity$6;
.super Ljava/lang/Object;
.source "PRUIActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/app/playreadyui/PRUIActivity;->createErrorDialog(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/app/playreadyui/PRUIActivity;


# direct methods
.method constructor <init>(Lcom/samsung/app/playreadyui/PRUIActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 550
    iput-object p1, p0, Lcom/samsung/app/playreadyui/PRUIActivity$6;->this$0:Lcom/samsung/app/playreadyui/PRUIActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 4
    .parameter "arg0"

    .prologue
    .line 553
    const-string v0, "PRUIActivity"

    const-string v1, "Notification dialog cancelled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    iget-object v0, p0, Lcom/samsung/app/playreadyui/PRUIActivity$6;->this$0:Lcom/samsung/app/playreadyui/PRUIActivity;

    invoke-virtual {v0}, Lcom/samsung/app/playreadyui/PRUIActivity;->finish()V

    .line 556
    return-void
.end method
