.class Lcom/sprint/w/installer/delivery/SearchActivity$12;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/w/installer/delivery/SearchActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/w/installer/delivery/SearchActivity;


# direct methods
.method constructor <init>(Lcom/sprint/w/installer/delivery/SearchActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 908
    iput-object p1, p0, Lcom/sprint/w/installer/delivery/SearchActivity$12;->this$0:Lcom/sprint/w/installer/delivery/SearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 910
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/SearchActivity$12;->this$0:Lcom/sprint/w/installer/delivery/SearchActivity;

    iget-object v1, p0, Lcom/sprint/w/installer/delivery/SearchActivity$12;->this$0:Lcom/sprint/w/installer/delivery/SearchActivity;

    invoke-virtual {v1}, Lcom/sprint/w/installer/delivery/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sprint/w/installer/delivery/SearchActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 912
    return-void
.end method
