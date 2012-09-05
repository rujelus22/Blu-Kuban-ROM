.class Lcom/vlingo/client/car/iux/CarIUXActivity$4;
.super Ljava/lang/Object;
.source "CarIUXActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/car/iux/CarIUXActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/car/iux/CarIUXActivity;


# direct methods
.method constructor <init>(Lcom/vlingo/client/car/iux/CarIUXActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 207
    iput-object p1, p0, Lcom/vlingo/client/car/iux/CarIUXActivity$4;->this$0:Lcom/vlingo/client/car/iux/CarIUXActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 211
    iget-object v0, p0, Lcom/vlingo/client/car/iux/CarIUXActivity$4;->this$0:Lcom/vlingo/client/car/iux/CarIUXActivity;

    invoke-virtual {v0}, Lcom/vlingo/client/car/iux/CarIUXActivity;->finish()V

    .line 212
    return-void
.end method
