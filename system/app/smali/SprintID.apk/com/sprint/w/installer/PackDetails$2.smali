.class Lcom/sprint/w/installer/PackDetails$2;
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
    .line 110
    iput-object p1, p0, Lcom/sprint/w/installer/PackDetails$2;->this$0:Lcom/sprint/w/installer/PackDetails;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/sprint/w/installer/PackDetails$2;->this$0:Lcom/sprint/w/installer/PackDetails;

    iget-boolean v0, v0, Lcom/sprint/w/installer/PackDetails;->mCurrent:Z

    if-nez v0, :cond_e

    .line 114
    iget-object v0, p0, Lcom/sprint/w/installer/PackDetails$2;->this$0:Lcom/sprint/w/installer/PackDetails;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/sprint/w/installer/PackDetails;->showDialog(I)V

    .line 118
    :goto_d
    return-void

    .line 116
    :cond_e
    iget-object v0, p0, Lcom/sprint/w/installer/PackDetails$2;->this$0:Lcom/sprint/w/installer/PackDetails;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Lcom/sprint/w/installer/PackDetails;->showDialog(I)V

    goto :goto_d
.end method
