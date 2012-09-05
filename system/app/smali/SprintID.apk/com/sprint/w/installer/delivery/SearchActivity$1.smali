.class Lcom/sprint/w/installer/delivery/SearchActivity$1;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/w/installer/delivery/SearchActivity;->searchPSI(Ljava/lang/String;)V
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
    .line 297
    iput-object p1, p0, Lcom/sprint/w/installer/delivery/SearchActivity$1;->this$0:Lcom/sprint/w/installer/delivery/SearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 299
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/SearchActivity$1;->this$0:Lcom/sprint/w/installer/delivery/SearchActivity;

    invoke-virtual {v0}, Lcom/sprint/w/installer/delivery/SearchActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 303
    :goto_8
    return-void

    .line 302
    :cond_9
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/SearchActivity$1;->this$0:Lcom/sprint/w/installer/delivery/SearchActivity;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Lcom/sprint/w/installer/delivery/SearchActivity;->showDialog(I)V

    goto :goto_8
.end method
