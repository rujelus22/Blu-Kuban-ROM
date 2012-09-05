.class Lcom/sprint/w/installer/PackInstaller$13$3;
.super Ljava/lang/Object;
.source "PackInstaller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/w/installer/PackInstaller$13;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sprint/w/installer/PackInstaller$13;


# direct methods
.method constructor <init>(Lcom/sprint/w/installer/PackInstaller$13;)V
    .registers 2
    .parameter

    .prologue
    .line 981
    iput-object p1, p0, Lcom/sprint/w/installer/PackInstaller$13$3;->this$1:Lcom/sprint/w/installer/PackInstaller$13;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 983
    iget-object v0, p0, Lcom/sprint/w/installer/PackInstaller$13$3;->this$1:Lcom/sprint/w/installer/PackInstaller$13;

    iget-object v0, v0, Lcom/sprint/w/installer/PackInstaller$13;->this$0:Lcom/sprint/w/installer/PackInstaller;

    invoke-virtual {v0}, Lcom/sprint/w/installer/PackInstaller;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_25

    .line 984
    iget-object v0, p0, Lcom/sprint/w/installer/PackInstaller$13$3;->this$1:Lcom/sprint/w/installer/PackInstaller$13;

    iget-object v0, v0, Lcom/sprint/w/installer/PackInstaller$13;->this$0:Lcom/sprint/w/installer/PackInstaller;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sprint/w/installer/PackInstaller;->mBlockBackKey:Z

    .line 985
    iget-object v0, p0, Lcom/sprint/w/installer/PackInstaller$13$3;->this$1:Lcom/sprint/w/installer/PackInstaller$13;

    iget-object v0, v0, Lcom/sprint/w/installer/PackInstaller$13;->this$0:Lcom/sprint/w/installer/PackInstaller;

    iget-object v0, v0, Lcom/sprint/w/installer/PackInstaller;->mProgress:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 986
    iget-object v0, p0, Lcom/sprint/w/installer/PackInstaller$13$3;->this$1:Lcom/sprint/w/installer/PackInstaller$13;

    iget-object v0, v0, Lcom/sprint/w/installer/PackInstaller$13;->this$0:Lcom/sprint/w/installer/PackInstaller;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/sprint/w/installer/PackInstaller;->showDialog(I)V

    .line 988
    :cond_25
    return-void
.end method
