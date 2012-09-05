.class Lcom/sprint/w/installer/PackInstaller$4;
.super Ljava/lang/Object;
.source "PackInstaller.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/w/installer/PackInstaller;->initD2CView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/w/installer/PackInstaller;

.field final synthetic val$installedInfo:Lcom/sprint/w/installer/PackInfo;


# direct methods
.method constructor <init>(Lcom/sprint/w/installer/PackInstaller;Lcom/sprint/w/installer/PackInfo;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 610
    iput-object p1, p0, Lcom/sprint/w/installer/PackInstaller$4;->this$0:Lcom/sprint/w/installer/PackInstaller;

    iput-object p2, p0, Lcom/sprint/w/installer/PackInstaller$4;->val$installedInfo:Lcom/sprint/w/installer/PackInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "arg0"

    .prologue
    .line 616
    iget-object v0, p0, Lcom/sprint/w/installer/PackInstaller$4;->val$installedInfo:Lcom/sprint/w/installer/PackInfo;

    if-nez v0, :cond_9

    .line 617
    iget-object v0, p0, Lcom/sprint/w/installer/PackInstaller$4;->this$0:Lcom/sprint/w/installer/PackInstaller;

    invoke-static {v0}, Lcom/sprint/w/installer/util/Util;->initAndLoadDefaultHome(Landroid/content/Context;)V

    .line 619
    :cond_9
    iget-object v0, p0, Lcom/sprint/w/installer/PackInstaller$4;->this$0:Lcom/sprint/w/installer/PackInstaller;

    invoke-virtual {v0}, Lcom/sprint/w/installer/PackInstaller;->finish()V

    .line 620
    return-void
.end method
