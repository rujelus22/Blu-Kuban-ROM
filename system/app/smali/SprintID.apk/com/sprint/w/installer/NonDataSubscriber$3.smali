.class Lcom/sprint/w/installer/NonDataSubscriber$3;
.super Ljava/lang/Object;
.source "NonDataSubscriber.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/w/installer/NonDataSubscriber;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/w/installer/NonDataSubscriber;


# direct methods
.method constructor <init>(Lcom/sprint/w/installer/NonDataSubscriber;)V
    .registers 2
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/sprint/w/installer/NonDataSubscriber$3;->this$0:Lcom/sprint/w/installer/NonDataSubscriber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    .line 47
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sprint/w/installer/NonDataSubscriber$3;->this$0:Lcom/sprint/w/installer/NonDataSubscriber;

    const-class v2, Lcom/sprint/w/installer/delivery/KeyWordLookup;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 48
    .local v0, i:Landroid/content/Intent;
    iget-object v1, p0, Lcom/sprint/w/installer/NonDataSubscriber$3;->this$0:Lcom/sprint/w/installer/NonDataSubscriber;

    invoke-virtual {v1, v0}, Lcom/sprint/w/installer/NonDataSubscriber;->startActivity(Landroid/content/Intent;)V

    .line 49
    return-void
.end method
