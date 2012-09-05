.class Lcom/vlingo/client/car/nav/NavController$3;
.super Ljava/lang/Object;
.source "NavController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/car/nav/NavController;->showHomeAddressEditDialog(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/car/nav/NavController;


# direct methods
.method constructor <init>(Lcom/vlingo/client/car/nav/NavController;)V
    .registers 2
    .parameter

    .prologue
    .line 165
    iput-object p1, p0, Lcom/vlingo/client/car/nav/NavController$3;->this$0:Lcom/vlingo/client/car/nav/NavController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 167
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 168
    return-void
.end method
