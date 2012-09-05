.class Lcom/cooliris/media/HudLayer$54$1$3;
.super Ljava/lang/Object;
.source "HudLayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cooliris/media/HudLayer$54$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/cooliris/media/HudLayer$54$1;

.field final synthetic val$builder2:Landroid/app/AlertDialog$Builder;


# direct methods
.method constructor <init>(Lcom/cooliris/media/HudLayer$54$1;Landroid/app/AlertDialog$Builder;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 3168
    iput-object p1, p0, Lcom/cooliris/media/HudLayer$54$1$3;->this$2:Lcom/cooliris/media/HudLayer$54$1;

    iput-object p2, p0, Lcom/cooliris/media/HudLayer$54$1$3;->val$builder2:Landroid/app/AlertDialog$Builder;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 3170
    iget-object v0, p0, Lcom/cooliris/media/HudLayer$54$1$3;->val$builder2:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 3171
    return-void
.end method
