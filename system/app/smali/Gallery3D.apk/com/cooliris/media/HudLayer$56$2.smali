.class Lcom/cooliris/media/HudLayer$56$2;
.super Ljava/lang/Object;
.source "HudLayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cooliris/media/HudLayer$56;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cooliris/media/HudLayer$56;

.field final synthetic val$builder1:Landroid/app/AlertDialog$Builder;


# direct methods
.method constructor <init>(Lcom/cooliris/media/HudLayer$56;Landroid/app/AlertDialog$Builder;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 3397
    iput-object p1, p0, Lcom/cooliris/media/HudLayer$56$2;->this$1:Lcom/cooliris/media/HudLayer$56;

    iput-object p2, p0, Lcom/cooliris/media/HudLayer$56$2;->val$builder1:Landroid/app/AlertDialog$Builder;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 3399
    iget-object v0, p0, Lcom/cooliris/media/HudLayer$56$2;->val$builder1:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 3400
    return-void
.end method
