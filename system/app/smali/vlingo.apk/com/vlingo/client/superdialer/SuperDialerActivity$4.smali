.class Lcom/vlingo/client/superdialer/SuperDialerActivity$4;
.super Ljava/lang/Object;
.source "SuperDialerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/superdialer/SuperDialerActivity;->onContactClicked(Lcom/vlingo/client/core/contacts/DisplayItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/superdialer/SuperDialerActivity;


# direct methods
.method constructor <init>(Lcom/vlingo/client/superdialer/SuperDialerActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 572
    iput-object p1, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity$4;->this$0:Lcom/vlingo/client/superdialer/SuperDialerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 574
    return-void
.end method