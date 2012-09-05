.class Lcom/sprint/dsa/PageAbout$1;
.super Ljava/lang/Object;
.source "PageAbout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/dsa/PageAbout;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/dsa/PageAbout;


# direct methods
.method constructor <init>(Lcom/sprint/dsa/PageAbout;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sprint/dsa/PageAbout$1;->this$0:Lcom/sprint/dsa/PageAbout;

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/sprint/dsa/PageAbout$1;->this$0:Lcom/sprint/dsa/PageAbout;

    invoke-static {v0}, Lcom/sprint/dsa/SprintZone;->upgradeSelf(Landroid/app/Activity;)V

    .line 87
    return-void
.end method
