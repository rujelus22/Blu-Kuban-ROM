.class Lcom/sprint/w/installer/psi/SearchActivity$1;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/w/installer/psi/SearchActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/w/installer/psi/SearchActivity;


# direct methods
.method constructor <init>(Lcom/sprint/w/installer/psi/SearchActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lcom/sprint/w/installer/psi/SearchActivity$1;->this$0:Lcom/sprint/w/installer/psi/SearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .parameter "v"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/sprint/w/installer/psi/SearchActivity$1;->this$0:Lcom/sprint/w/installer/psi/SearchActivity;

    const/4 v1, 0x0

    const/4 v2, 0x1

    sget-object v3, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sprint/w/installer/psi/SearchActivity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    .line 52
    return-void
.end method
