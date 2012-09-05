.class Lcom/sprint/w/installer/PackDetails$1;
.super Ljava/lang/Object;
.source "PackDetails.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/w/installer/PackDetails;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/w/installer/PackDetails;


# direct methods
.method constructor <init>(Lcom/sprint/w/installer/PackDetails;)V
    .registers 2
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lcom/sprint/w/installer/PackDetails$1;->this$0:Lcom/sprint/w/installer/PackDetails;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    .line 94
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sprint/w/installer/PackDetails$1;->this$0:Lcom/sprint/w/installer/PackDetails;

    invoke-virtual {v1}, Lcom/sprint/w/installer/PackDetails;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/sprint/w/installer/PackUninstaller;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 95
    .local v0, i:Landroid/content/Intent;
    const-string v1, "com.sprint.w.installer.EXTRA_PACK_ID"

    iget-object v2, p0, Lcom/sprint/w/installer/PackDetails$1;->this$0:Lcom/sprint/w/installer/PackDetails;

    iget-object v2, v2, Lcom/sprint/w/installer/PackDetails;->mPackInfo:Lcom/sprint/w/installer/PackInfo;

    iget-object v2, v2, Lcom/sprint/w/installer/PackInfo;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    iget-object v1, p0, Lcom/sprint/w/installer/PackDetails$1;->this$0:Lcom/sprint/w/installer/PackDetails;

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Lcom/sprint/w/installer/PackDetails;->startActivityForResult(Landroid/content/Intent;I)V

    .line 97
    return-void
.end method
