.class Lcom/sprint/w/installer/RssPackDetails$1;
.super Ljava/lang/Object;
.source "RssPackDetails.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/w/installer/RssPackDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/w/installer/RssPackDetails;


# direct methods
.method constructor <init>(Lcom/sprint/w/installer/RssPackDetails;)V
    .registers 2
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lcom/sprint/w/installer/RssPackDetails$1;->this$0:Lcom/sprint/w/installer/RssPackDetails;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 103
    const-string v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 105
    iget-object v0, p0, Lcom/sprint/w/installer/RssPackDetails$1;->this$0:Lcom/sprint/w/installer/RssPackDetails;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Lcom/sprint/w/installer/RssPackDetails;->showDialog(I)V

    .line 109
    :goto_13
    return-void

    .line 108
    :cond_14
    iget-object v0, p0, Lcom/sprint/w/installer/RssPackDetails$1;->this$0:Lcom/sprint/w/installer/RssPackDetails;

    #calls: Lcom/sprint/w/installer/RssPackDetails;->installPack()V
    invoke-static {v0}, Lcom/sprint/w/installer/RssPackDetails;->access$000(Lcom/sprint/w/installer/RssPackDetails;)V

    goto :goto_13
.end method
