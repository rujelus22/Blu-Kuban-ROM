.class Lcom/sprint/w/installer/psi/PsiPackBrowser$2;
.super Ljava/lang/Object;
.source "PsiPackBrowser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/w/installer/psi/PsiPackBrowser;->loadComplete()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/w/installer/psi/PsiPackBrowser;


# direct methods
.method constructor <init>(Lcom/sprint/w/installer/psi/PsiPackBrowser;)V
    .registers 2
    .parameter

    .prologue
    .line 226
    iput-object p1, p0, Lcom/sprint/w/installer/psi/PsiPackBrowser$2;->this$0:Lcom/sprint/w/installer/psi/PsiPackBrowser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 230
    iget-object v0, p0, Lcom/sprint/w/installer/psi/PsiPackBrowser$2;->this$0:Lcom/sprint/w/installer/psi/PsiPackBrowser;

    invoke-virtual {v0}, Lcom/sprint/w/installer/psi/PsiPackBrowser;->loadMorePacks()V

    .line 231
    return-void
.end method
