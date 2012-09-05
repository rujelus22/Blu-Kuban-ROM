.class Lcom/sprint/w/installer/PackInstaller$7;
.super Ljava/lang/Object;
.source "PackInstaller.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/w/installer/PackInstaller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/w/installer/PackInstaller;


# direct methods
.method constructor <init>(Lcom/sprint/w/installer/PackInstaller;)V
    .registers 2
    .parameter

    .prologue
    .line 758
    iput-object p1, p0, Lcom/sprint/w/installer/PackInstaller$7;->this$0:Lcom/sprint/w/installer/PackInstaller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 767
    iget-object v0, p0, Lcom/sprint/w/installer/PackInstaller$7;->this$0:Lcom/sprint/w/installer/PackInstaller;

    invoke-static {v0}, Lcom/sprint/w/installer/util/Util;->startHomeScreen(Landroid/content/Context;)V

    .line 768
    iget-object v0, p0, Lcom/sprint/w/installer/PackInstaller$7;->this$0:Lcom/sprint/w/installer/PackInstaller;

    invoke-virtual {v0}, Lcom/sprint/w/installer/PackInstaller;->finish()V

    .line 769
    return-void
.end method
