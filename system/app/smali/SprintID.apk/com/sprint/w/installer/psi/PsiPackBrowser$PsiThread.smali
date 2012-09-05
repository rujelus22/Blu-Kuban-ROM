.class abstract Lcom/sprint/w/installer/psi/PsiPackBrowser$PsiThread;
.super Landroid/os/AsyncTask;
.source "PsiPackBrowser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/w/installer/psi/PsiPackBrowser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "PsiThread"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field handler:Lcom/sprint/w/installer/psi/PsiPackBrowser$MyHandler;

.field final synthetic this$0:Lcom/sprint/w/installer/psi/PsiPackBrowser;


# direct methods
.method public constructor <init>(Lcom/sprint/w/installer/psi/PsiPackBrowser;Lcom/sprint/w/installer/psi/PsiPackBrowser$MyHandler;)V
    .registers 3
    .parameter
    .parameter "handler"

    .prologue
    .line 336
    iput-object p1, p0, Lcom/sprint/w/installer/psi/PsiPackBrowser$PsiThread;->this$0:Lcom/sprint/w/installer/psi/PsiPackBrowser;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 337
    iput-object p2, p0, Lcom/sprint/w/installer/psi/PsiPackBrowser$PsiThread;->handler:Lcom/sprint/w/installer/psi/PsiPackBrowser$MyHandler;

    .line 338
    return-void
.end method


# virtual methods
.method public setHandler(Lcom/sprint/w/installer/psi/PsiPackBrowser$MyHandler;)V
    .registers 2
    .parameter "handler"

    .prologue
    .line 341
    iput-object p1, p0, Lcom/sprint/w/installer/psi/PsiPackBrowser$PsiThread;->handler:Lcom/sprint/w/installer/psi/PsiPackBrowser$MyHandler;

    .line 342
    return-void
.end method
