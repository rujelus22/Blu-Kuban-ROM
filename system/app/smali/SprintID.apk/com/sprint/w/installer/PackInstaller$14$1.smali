.class Lcom/sprint/w/installer/PackInstaller$14$1;
.super Ljava/lang/Object;
.source "PackInstaller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/w/installer/PackInstaller$14;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sprint/w/installer/PackInstaller$14;


# direct methods
.method constructor <init>(Lcom/sprint/w/installer/PackInstaller$14;)V
    .registers 2
    .parameter

    .prologue
    .line 1162
    iput-object p1, p0, Lcom/sprint/w/installer/PackInstaller$14$1;->this$1:Lcom/sprint/w/installer/PackInstaller$14;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 1165
    iget-object v0, p0, Lcom/sprint/w/installer/PackInstaller$14$1;->this$1:Lcom/sprint/w/installer/PackInstaller$14;

    iget-object v0, v0, Lcom/sprint/w/installer/PackInstaller$14;->this$0:Lcom/sprint/w/installer/PackInstaller;

    invoke-virtual {v0}, Lcom/sprint/w/installer/PackInstaller;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 1166
    iget-object v0, p0, Lcom/sprint/w/installer/PackInstaller$14$1;->this$1:Lcom/sprint/w/installer/PackInstaller$14;

    iget-object v0, v0, Lcom/sprint/w/installer/PackInstaller$14;->this$0:Lcom/sprint/w/installer/PackInstaller;

    iget-object v0, v0, Lcom/sprint/w/installer/PackInstaller;->mProgress:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1168
    :try_start_15
    iget-object v0, p0, Lcom/sprint/w/installer/PackInstaller$14$1;->this$1:Lcom/sprint/w/installer/PackInstaller$14;

    iget-object v0, v0, Lcom/sprint/w/installer/PackInstaller$14;->this$0:Lcom/sprint/w/installer/PackInstaller;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Lcom/sprint/w/installer/PackInstaller;->showDialog(I)V
    :try_end_1e
    .catch Ljava/lang/RuntimeException; {:try_start_15 .. :try_end_1e} :catch_1f

    .line 1173
    :cond_1e
    :goto_1e
    return-void

    .line 1169
    :catch_1f
    move-exception v0

    goto :goto_1e
.end method
