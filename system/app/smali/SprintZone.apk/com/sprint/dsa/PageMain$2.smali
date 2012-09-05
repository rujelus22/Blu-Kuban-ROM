.class Lcom/sprint/dsa/PageMain$2;
.super Ljava/lang/Object;
.source "PageMain.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/dsa/PageMain;->showWelcomeMessage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/dsa/PageMain;


# direct methods
.method constructor <init>(Lcom/sprint/dsa/PageMain;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sprint/dsa/PageMain$2;->this$0:Lcom/sprint/dsa/PageMain;

    .line 271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v1, 0x0

    .line 273
    iget-object v0, p0, Lcom/sprint/dsa/PageMain$2;->this$0:Lcom/sprint/dsa/PageMain;

    #getter for: Lcom/sprint/dsa/PageMain;->mPrefs:Lcom/sprint/dsa/Prefs;
    invoke-static {v0}, Lcom/sprint/dsa/PageMain;->access$1(Lcom/sprint/dsa/PageMain;)Lcom/sprint/dsa/Prefs;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sprint/dsa/Prefs;->setFirstLaunch(Z)V

    .line 274
    iget-object v0, p0, Lcom/sprint/dsa/PageMain$2;->this$0:Lcom/sprint/dsa/PageMain;

    #getter for: Lcom/sprint/dsa/PageMain;->mUpdateRunning:Z
    invoke-static {v0}, Lcom/sprint/dsa/PageMain;->access$4(Lcom/sprint/dsa/PageMain;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 275
    iget-object v0, p0, Lcom/sprint/dsa/PageMain$2;->this$0:Lcom/sprint/dsa/PageMain;

    invoke-virtual {v0, v1}, Lcom/sprint/dsa/PageMain;->showDialog(I)V

    .line 279
    :goto_17
    return-void

    .line 277
    :cond_18
    iget-object v0, p0, Lcom/sprint/dsa/PageMain$2;->this$0:Lcom/sprint/dsa/PageMain;

    #calls: Lcom/sprint/dsa/PageMain;->dispatchPages()V
    invoke-static {v0}, Lcom/sprint/dsa/PageMain;->access$3(Lcom/sprint/dsa/PageMain;)V

    goto :goto_17
.end method
