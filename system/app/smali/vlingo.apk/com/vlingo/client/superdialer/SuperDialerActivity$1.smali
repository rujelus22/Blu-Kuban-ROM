.class Lcom/vlingo/client/superdialer/SuperDialerActivity$1;
.super Ljava/lang/Object;
.source "SuperDialerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/superdialer/SuperDialerActivity;->onCreate(Landroid/os/Bundle;)V
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
    .line 166
    iput-object p1, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity$1;->this$0:Lcom/vlingo/client/superdialer/SuperDialerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 168
    iget-object v0, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity$1;->this$0:Lcom/vlingo/client/superdialer/SuperDialerActivity;

    invoke-virtual {v0}, Lcom/vlingo/client/superdialer/SuperDialerActivity;->startRecognition()V

    .line 169
    return-void
.end method
