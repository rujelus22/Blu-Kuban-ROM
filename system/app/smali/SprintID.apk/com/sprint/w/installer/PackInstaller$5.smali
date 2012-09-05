.class Lcom/sprint/w/installer/PackInstaller$5;
.super Ljava/lang/Object;
.source "PackInstaller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/w/installer/PackInstaller;->initD2CView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/w/installer/PackInstaller;

.field final synthetic val$button:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/sprint/w/installer/PackInstaller;Landroid/widget/Button;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 625
    iput-object p1, p0, Lcom/sprint/w/installer/PackInstaller$5;->this$0:Lcom/sprint/w/installer/PackInstaller;

    iput-object p2, p0, Lcom/sprint/w/installer/PackInstaller$5;->val$button:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 628
    :try_start_0
    invoke-static {}, Lcom/sprint/w/installer/PackInstaller;->access$000()Lcom/sprint/id/logger/Logger;

    move-result-object v0

    const-string v1, "Entered the AutoClick handler."

    invoke-virtual {v0, v1}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 629
    iget-object v0, p0, Lcom/sprint/w/installer/PackInstaller$5;->this$0:Lcom/sprint/w/installer/PackInstaller;

    invoke-virtual {v0}, Lcom/sprint/w/installer/PackInstaller;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 630
    invoke-static {}, Lcom/sprint/w/installer/PackInstaller;->access$000()Lcom/sprint/id/logger/Logger;

    move-result-object v0

    const-string v1, "auto clicking button"

    invoke-virtual {v0, v1}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 631
    iget-object v0, p0, Lcom/sprint/w/installer/PackInstaller$5;->val$button:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->performClick()Z
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1f} :catch_20

    .line 635
    :cond_1f
    :goto_1f
    return-void

    .line 633
    :catch_20
    move-exception v0

    goto :goto_1f
.end method
