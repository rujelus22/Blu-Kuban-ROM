.class Lcom/vlingo/client/car/CarHelpScreen$2;
.super Ljava/lang/Object;
.source "CarHelpScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/car/CarHelpScreen;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/car/CarHelpScreen;


# direct methods
.method constructor <init>(Lcom/vlingo/client/car/CarHelpScreen;)V
    .registers 2
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/vlingo/client/car/CarHelpScreen$2;->this$0:Lcom/vlingo/client/car/CarHelpScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "arg0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/vlingo/client/car/CarHelpScreen$2;->this$0:Lcom/vlingo/client/car/CarHelpScreen;

    invoke-virtual {v0}, Lcom/vlingo/client/car/CarHelpScreen;->finish()V

    .line 69
    return-void
.end method
