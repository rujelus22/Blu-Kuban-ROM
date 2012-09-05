.class Lcom/cooliris/wallpaper/Slideshow$1;
.super Ljava/lang/Object;
.source "Slideshow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cooliris/wallpaper/Slideshow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cooliris/wallpaper/Slideshow;


# direct methods
.method constructor <init>(Lcom/cooliris/wallpaper/Slideshow;)V
    .registers 2
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/cooliris/wallpaper/Slideshow$1;->this$0:Lcom/cooliris/wallpaper/Slideshow;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/cooliris/wallpaper/Slideshow$1;->this$0:Lcom/cooliris/wallpaper/Slideshow;

    invoke-virtual {v0}, Lcom/cooliris/wallpaper/Slideshow;->drawFrame()V

    .line 78
    return-void
.end method
