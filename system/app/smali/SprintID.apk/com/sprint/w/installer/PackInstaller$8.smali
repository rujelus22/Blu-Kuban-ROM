.class Lcom/sprint/w/installer/PackInstaller$8;
.super Ljava/lang/Object;
.source "PackInstaller.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/w/installer/PackInstaller;
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
    .line 803
    iput-object p1, p0, Lcom/sprint/w/installer/PackInstaller$8;->this$0:Lcom/sprint/w/installer/PackInstaller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 805
    iget-object v0, p0, Lcom/sprint/w/installer/PackInstaller$8;->this$0:Lcom/sprint/w/installer/PackInstaller;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sprint/w/installer/PackInstaller;->setResult(I)V

    .line 806
    iget-object v0, p0, Lcom/sprint/w/installer/PackInstaller$8;->this$0:Lcom/sprint/w/installer/PackInstaller;

    invoke-virtual {v0}, Lcom/sprint/w/installer/PackInstaller;->finish()V

    .line 807
    iget-object v0, p0, Lcom/sprint/w/installer/PackInstaller$8;->this$0:Lcom/sprint/w/installer/PackInstaller;

    #calls: Lcom/sprint/w/installer/PackInstaller;->abortThreads()V
    invoke-static {v0}, Lcom/sprint/w/installer/PackInstaller;->access$500(Lcom/sprint/w/installer/PackInstaller;)V

    .line 809
    :try_start_10
    iget-object v0, p0, Lcom/sprint/w/installer/PackInstaller$8;->this$0:Lcom/sprint/w/installer/PackInstaller;

    #calls: Lcom/sprint/w/installer/PackInstaller;->getTargetFile()Ljava/io/File;
    invoke-static {v0}, Lcom/sprint/w/installer/PackInstaller;->access$600(Lcom/sprint/w/installer/PackInstaller;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_19} :catch_1a

    .line 812
    :goto_19
    return-void

    .line 810
    :catch_1a
    move-exception v0

    goto :goto_19
.end method
