.class Lcom/samsung/dmp/layout/DMPVideoActivity$10$1$1;
.super Ljava/lang/Object;
.source "DMPVideoActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/dmp/layout/DMPVideoActivity$10$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/samsung/dmp/layout/DMPVideoActivity$10$1;


# direct methods
.method constructor <init>(Lcom/samsung/dmp/layout/DMPVideoActivity$10$1;)V
    .registers 2
    .parameter

    .prologue
    .line 981
    iput-object p1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$10$1$1;->this$2:Lcom/samsung/dmp/layout/DMPVideoActivity$10$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 983
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$10$1$1;->this$2:Lcom/samsung/dmp/layout/DMPVideoActivity$10$1;

    iget-object v0, v0, Lcom/samsung/dmp/layout/DMPVideoActivity$10$1;->this$1:Lcom/samsung/dmp/layout/DMPVideoActivity$10;

    iget-object v0, v0, Lcom/samsung/dmp/layout/DMPVideoActivity$10;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mBufferingMessageOnScreen:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$5400(Lcom/samsung/dmp/layout/DMPVideoActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 984
    return-void
.end method
