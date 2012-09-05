.class Lcom/vlingo/client/help/InCarScreen$1;
.super Ljava/lang/Object;
.source "InCarScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/help/InCarScreen;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/help/InCarScreen;


# direct methods
.method constructor <init>(Lcom/vlingo/client/help/InCarScreen;)V
    .registers 2
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lcom/vlingo/client/help/InCarScreen$1;->this$0:Lcom/vlingo/client/help/InCarScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/vlingo/client/help/InCarScreen$1;->this$0:Lcom/vlingo/client/help/InCarScreen;

    invoke-virtual {v0}, Lcom/vlingo/client/help/InCarScreen;->finish()V

    .line 66
    return-void
.end method
