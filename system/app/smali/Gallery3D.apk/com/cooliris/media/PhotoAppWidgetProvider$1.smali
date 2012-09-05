.class Lcom/cooliris/media/PhotoAppWidgetProvider$1;
.super Ljava/lang/Object;
.source "PhotoAppWidgetProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cooliris/media/PhotoAppWidgetProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cooliris/media/PhotoAppWidgetProvider;


# direct methods
.method constructor <init>(Lcom/cooliris/media/PhotoAppWidgetProvider;)V
    .registers 2
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/cooliris/media/PhotoAppWidgetProvider$1;->this$0:Lcom/cooliris/media/PhotoAppWidgetProvider;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/cooliris/media/PhotoAppWidgetProvider$1;->this$0:Lcom/cooliris/media/PhotoAppWidgetProvider;

    #calls: Lcom/cooliris/media/PhotoAppWidgetProvider;->updateSlideShow()V
    invoke-static {v0}, Lcom/cooliris/media/PhotoAppWidgetProvider;->access$000(Lcom/cooliris/media/PhotoAppWidgetProvider;)V

    .line 63
    return-void
.end method
