.class Lcom/sprint/w/installer/RssPackBrowser$3;
.super Ljava/lang/Object;
.source "RssPackBrowser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/w/installer/RssPackBrowser;->displayError()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/w/installer/RssPackBrowser;


# direct methods
.method constructor <init>(Lcom/sprint/w/installer/RssPackBrowser;)V
    .registers 2
    .parameter

    .prologue
    .line 220
    iput-object p1, p0, Lcom/sprint/w/installer/RssPackBrowser$3;->this$0:Lcom/sprint/w/installer/RssPackBrowser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 223
    iget-object v0, p0, Lcom/sprint/w/installer/RssPackBrowser$3;->this$0:Lcom/sprint/w/installer/RssPackBrowser;

    const-string v1, "Please check the URL and try again."

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 224
    iget-object v0, p0, Lcom/sprint/w/installer/RssPackBrowser$3;->this$0:Lcom/sprint/w/installer/RssPackBrowser;

    invoke-virtual {v0}, Lcom/sprint/w/installer/RssPackBrowser;->finish()V

    .line 225
    return-void
.end method
