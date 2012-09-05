.class Lcom/samsung/fumo/FWUpdateComplete$4;
.super Ljava/lang/Object;
.source "FWUpdateComplete.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/fumo/FWUpdateComplete;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/fumo/FWUpdateComplete;


# direct methods
.method constructor <init>(Lcom/samsung/fumo/FWUpdateComplete;)V
    .registers 2
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Lcom/samsung/fumo/FWUpdateComplete$4;->this$0:Lcom/samsung/fumo/FWUpdateComplete;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 3
    .parameter "arg0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/samsung/fumo/FWUpdateComplete$4;->this$0:Lcom/samsung/fumo/FWUpdateComplete;

    #getter for: Lcom/samsung/fumo/FWUpdateComplete;->mApp:Lcom/samsung/client/DMApp;
    invoke-static {v0}, Lcom/samsung/fumo/FWUpdateComplete;->access$000(Lcom/samsung/fumo/FWUpdateComplete;)Lcom/samsung/client/DMApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/client/DMApp;->releaseWakeLock()V

    .line 89
    iget-object v0, p0, Lcom/samsung/fumo/FWUpdateComplete$4;->this$0:Lcom/samsung/fumo/FWUpdateComplete;

    #getter for: Lcom/samsung/fumo/FWUpdateComplete;->mApp:Lcom/samsung/client/DMApp;
    invoke-static {v0}, Lcom/samsung/fumo/FWUpdateComplete;->access$000(Lcom/samsung/fumo/FWUpdateComplete;)Lcom/samsung/client/DMApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/client/DMApp;->enableKeyGuard()V

    .line 90
    iget-object v0, p0, Lcom/samsung/fumo/FWUpdateComplete$4;->this$0:Lcom/samsung/fumo/FWUpdateComplete;

    invoke-virtual {v0}, Lcom/samsung/fumo/FWUpdateComplete;->finish()V

    .line 91
    return-void
.end method
