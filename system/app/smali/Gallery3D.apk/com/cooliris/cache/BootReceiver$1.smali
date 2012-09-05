.class Lcom/cooliris/cache/BootReceiver$1;
.super Landroid/database/ContentObserver;
.source "BootReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cooliris/cache/BootReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cooliris/cache/BootReceiver;


# direct methods
.method constructor <init>(Lcom/cooliris/cache/BootReceiver;Landroid/os/Handler;)V
    .registers 3
    .parameter
    .parameter "x0"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/cooliris/cache/BootReceiver$1;->this$0:Lcom/cooliris/cache/BootReceiver;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 2
    .parameter "selfChange"

    .prologue
    .line 90
    return-void
.end method
