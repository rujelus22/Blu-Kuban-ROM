.class Lcom/sprint/w/installer/delivery/SearchActivity$10;
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
    .line 882
    iput-object p1, p0, Lcom/sprint/w/installer/delivery/SearchActivity$10;->this$0:Lcom/sprint/w/installer/delivery/SearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 884
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/SearchActivity$10;->this$0:Lcom/sprint/w/installer/delivery/SearchActivity;

    invoke-virtual {v0}, Lcom/sprint/w/installer/delivery/SearchActivity;->finish()V

    .line 885
    return-void
.end method
