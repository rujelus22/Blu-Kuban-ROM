.class Lcom/sprint/w/installer/psi/SearchActivity$3;
.super Ljava/lang/Thread;
.source "SearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/w/installer/psi/SearchActivity;->search(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/w/installer/psi/SearchActivity;

.field final synthetic val$key:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sprint/w/installer/psi/SearchActivity;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 115
    iput-object p1, p0, Lcom/sprint/w/installer/psi/SearchActivity$3;->this$0:Lcom/sprint/w/installer/psi/SearchActivity;

    iput-object p2, p0, Lcom/sprint/w/installer/psi/SearchActivity$3;->val$key:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 117
    iget-object v0, p0, Lcom/sprint/w/installer/psi/SearchActivity$3;->this$0:Lcom/sprint/w/installer/psi/SearchActivity;

    iget-object v1, p0, Lcom/sprint/w/installer/psi/SearchActivity$3;->val$key:Ljava/lang/String;

    const/16 v2, 0x14

    invoke-static {v1, v2}, Lcom/sprint/w/installer/psi/PsiContentManager;->searchPacks(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/sprint/w/installer/psi/SearchActivity;->mServicePacks:Ljava/util/ArrayList;

    .line 118
    iget-object v0, p0, Lcom/sprint/w/installer/psi/SearchActivity$3;->this$0:Lcom/sprint/w/installer/psi/SearchActivity;

    iget-object v0, v0, Lcom/sprint/w/installer/psi/SearchActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sprint/w/installer/psi/SearchActivity$3$1;

    invoke-direct {v1, p0}, Lcom/sprint/w/installer/psi/SearchActivity$3$1;-><init>(Lcom/sprint/w/installer/psi/SearchActivity$3;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 134
    return-void
.end method
