.class Lcom/cooliris/picasa/PicasaService$1;
.super Ljava/lang/Object;
.source "PicasaService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cooliris/picasa/PicasaService;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cooliris/picasa/PicasaService;


# direct methods
.method constructor <init>(Lcom/cooliris/picasa/PicasaService;)V
    .registers 2
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lcom/cooliris/picasa/PicasaService$1;->this$0:Lcom/cooliris/picasa/PicasaService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 85
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 86
    return-void
.end method
