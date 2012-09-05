.class Lcom/sprint/w/installer/NonDataSubscriber$1;
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
    .line 30
    iput-object p1, p0, Lcom/sprint/w/installer/NonDataSubscriber$1;->this$0:Lcom/sprint/w/installer/NonDataSubscriber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 32
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sprint/w/installer/util/Util;->launchZoneApp(Landroid/content/Context;)V

    .line 33
    return-void
.end method
