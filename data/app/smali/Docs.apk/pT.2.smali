.class public LpT;
.super LcI;
.source "DownloadFileDocumentOpenerImpl.java"


# instance fields
.field final synthetic a:Landroid/support/v4/app/FragmentActivity;

.field final synthetic a:Lcom/google/android/apps/docs/doclist/documentopener/DownloadFileDocumentOpenerImpl;

.field final synthetic a:LkR;

.field final synthetic a:LnQ;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/doclist/documentopener/DownloadFileDocumentOpenerImpl;LnQ;LkR;Landroid/support/v4/app/FragmentActivity;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 215
    iput-object p1, p0, LpT;->a:Lcom/google/android/apps/docs/doclist/documentopener/DownloadFileDocumentOpenerImpl;

    iput-object p2, p0, LpT;->a:LnQ;

    iput-object p3, p0, LpT;->a:LkR;

    iput-object p4, p0, LpT;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {p0}, LcI;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 5

    .prologue
    .line 218
    new-instance v0, Lcom/google/android/apps/docs/doclist/CooperateStateMachineProgressFragment;

    iget-object v1, p0, LpT;->a:LnQ;

    iget-object v2, p0, LpT;->a:LkR;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/apps/docs/doclist/CooperateStateMachineProgressFragment;-><init>(LnQ;LkR;I)V

    .line 222
    iget-object v1, p0, LpT;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->a()Lx;

    move-result-object v1

    const-string v2, "DownloadFileDocumentOpener"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/docs/doclist/CooperateStateMachineProgressFragment;->a(Lx;Ljava/lang/String;)V

    .line 223
    return-void
.end method
