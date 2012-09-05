.class Lcom/sprint/w/installer/delivery/SearchActivity$2$1;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/w/installer/delivery/SearchActivity$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sprint/w/installer/delivery/SearchActivity$2;


# direct methods
.method constructor <init>(Lcom/sprint/w/installer/delivery/SearchActivity$2;)V
    .registers 2
    .parameter

    .prologue
    .line 311
    iput-object p1, p0, Lcom/sprint/w/installer/delivery/SearchActivity$2$1;->this$1:Lcom/sprint/w/installer/delivery/SearchActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 313
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/SearchActivity$2$1;->this$1:Lcom/sprint/w/installer/delivery/SearchActivity$2;

    iget-object v0, v0, Lcom/sprint/w/installer/delivery/SearchActivity$2;->this$0:Lcom/sprint/w/installer/delivery/SearchActivity;

    invoke-virtual {v0}, Lcom/sprint/w/installer/delivery/SearchActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 326
    :goto_a
    return-void

    .line 316
    :cond_b
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/SearchActivity$2$1;->this$1:Lcom/sprint/w/installer/delivery/SearchActivity$2;

    iget-object v0, v0, Lcom/sprint/w/installer/delivery/SearchActivity$2;->this$0:Lcom/sprint/w/installer/delivery/SearchActivity;

    iget-object v0, v0, Lcom/sprint/w/installer/delivery/SearchActivity;->mServicePacks:Ljava/util/ArrayList;

    if-eqz v0, :cond_42

    .line 317
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/SearchActivity$2$1;->this$1:Lcom/sprint/w/installer/delivery/SearchActivity$2;

    iget-object v0, v0, Lcom/sprint/w/installer/delivery/SearchActivity$2;->this$0:Lcom/sprint/w/installer/delivery/SearchActivity;

    iget-object v0, v0, Lcom/sprint/w/installer/delivery/SearchActivity;->mTitle:Landroid/widget/TextView;

    const v1, 0x7f060014

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 318
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/SearchActivity$2$1;->this$1:Lcom/sprint/w/installer/delivery/SearchActivity$2;

    iget-object v0, v0, Lcom/sprint/w/installer/delivery/SearchActivity$2;->this$0:Lcom/sprint/w/installer/delivery/SearchActivity;

    iget-object v0, v0, Lcom/sprint/w/installer/delivery/SearchActivity;->mServicePacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_3a

    .line 319
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/SearchActivity$2$1;->this$1:Lcom/sprint/w/installer/delivery/SearchActivity$2;

    iget-object v0, v0, Lcom/sprint/w/installer/delivery/SearchActivity$2;->this$0:Lcom/sprint/w/installer/delivery/SearchActivity;

    const v1, 0x7f060015

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 321
    :cond_3a
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/SearchActivity$2$1;->this$1:Lcom/sprint/w/installer/delivery/SearchActivity$2;

    iget-object v0, v0, Lcom/sprint/w/installer/delivery/SearchActivity$2;->this$0:Lcom/sprint/w/installer/delivery/SearchActivity;

    invoke-virtual {v0}, Lcom/sprint/w/installer/delivery/SearchActivity;->searchLoadComplete()V

    goto :goto_a

    .line 323
    :cond_42
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/SearchActivity$2$1;->this$1:Lcom/sprint/w/installer/delivery/SearchActivity$2;

    iget-object v0, v0, Lcom/sprint/w/installer/delivery/SearchActivity$2;->this$0:Lcom/sprint/w/installer/delivery/SearchActivity;

    #calls: Lcom/sprint/w/installer/delivery/SearchActivity;->resetActionBar()V
    invoke-static {v0}, Lcom/sprint/w/installer/delivery/SearchActivity;->access$000(Lcom/sprint/w/installer/delivery/SearchActivity;)V

    .line 324
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/SearchActivity$2$1;->this$1:Lcom/sprint/w/installer/delivery/SearchActivity$2;

    iget-object v0, v0, Lcom/sprint/w/installer/delivery/SearchActivity$2;->this$0:Lcom/sprint/w/installer/delivery/SearchActivity;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/sprint/w/installer/delivery/SearchActivity;->showDialog(I)V

    goto :goto_a
.end method
