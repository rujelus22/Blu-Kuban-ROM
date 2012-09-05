.class Lcom/sprint/w/installer/delivery/SearchActivity$13;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/w/installer/delivery/SearchActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/w/installer/delivery/SearchActivity;


# direct methods
.method constructor <init>(Lcom/sprint/w/installer/delivery/SearchActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 914
    iput-object p1, p0, Lcom/sprint/w/installer/delivery/SearchActivity$13;->this$0:Lcom/sprint/w/installer/delivery/SearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 917
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/SearchActivity$13;->this$0:Lcom/sprint/w/installer/delivery/SearchActivity;

    iget-object v1, p0, Lcom/sprint/w/installer/delivery/SearchActivity$13;->this$0:Lcom/sprint/w/installer/delivery/SearchActivity;

    #getter for: Lcom/sprint/w/installer/delivery/SearchActivity;->mStatus:Lcom/sprint/w/installer/DeliveryState;
    invoke-static {v1}, Lcom/sprint/w/installer/delivery/SearchActivity;->access$600(Lcom/sprint/w/installer/delivery/SearchActivity;)Lcom/sprint/w/installer/DeliveryState;

    move-result-object v1

    iget-object v2, p0, Lcom/sprint/w/installer/delivery/SearchActivity$13;->this$0:Lcom/sprint/w/installer/delivery/SearchActivity;

    iget-object v2, v2, Lcom/sprint/w/installer/delivery/SearchActivity;->mStatusExtra:Ljava/lang/String;

    const/4 v3, 0x1

    #calls: Lcom/sprint/w/installer/delivery/SearchActivity;->statusUpdate(Lcom/sprint/w/installer/DeliveryState;Ljava/lang/String;Z)V
    invoke-static {v0, v1, v2, v3}, Lcom/sprint/w/installer/delivery/SearchActivity;->access$1200(Lcom/sprint/w/installer/delivery/SearchActivity;Lcom/sprint/w/installer/DeliveryState;Ljava/lang/String;Z)V

    .line 918
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/SearchActivity$13;->this$0:Lcom/sprint/w/installer/delivery/SearchActivity;

    invoke-virtual {v0}, Lcom/sprint/w/installer/delivery/SearchActivity;->finish()V

    .line 919
    return-void
.end method
