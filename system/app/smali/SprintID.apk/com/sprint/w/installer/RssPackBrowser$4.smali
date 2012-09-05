.class Lcom/sprint/w/installer/RssPackBrowser$4;
.super Ljava/lang/Object;
.source "RssPackBrowser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/w/installer/RssPackBrowser;
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
    .line 272
    iput-object p1, p0, Lcom/sprint/w/installer/RssPackBrowser$4;->this$0:Lcom/sprint/w/installer/RssPackBrowser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 274
    iget-object v0, p0, Lcom/sprint/w/installer/RssPackBrowser$4;->this$0:Lcom/sprint/w/installer/RssPackBrowser;

    iget-object v1, p0, Lcom/sprint/w/installer/RssPackBrowser$4;->this$0:Lcom/sprint/w/installer/RssPackBrowser;

    iget-object v1, v1, Lcom/sprint/w/installer/RssPackBrowser;->mUpdateList:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/sprint/w/installer/RssPackBrowser;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 275
    return-void
.end method
