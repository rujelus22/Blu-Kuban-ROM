.class Lcom/sprint/smps/activities/MainMenu$2;
.super Ljava/lang/Object;
.source "MainMenu.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/smps/activities/MainMenu;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/smps/activities/MainMenu;


# direct methods
.method constructor <init>(Lcom/sprint/smps/activities/MainMenu;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sprint/smps/activities/MainMenu$2;->this$0:Lcom/sprint/smps/activities/MainMenu;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v3, 0x0

    .line 89
    invoke-static {}, Lcom/sprint/smps/activities/MainMenu;->access$0()Lcom/sprint/smps/activities/MainMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sprint/smps/activities/MainMenu;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/view/KeyEvent;

    const/16 v2, 0x52

    invoke-direct {v1, v3, v2}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v0, v3, v1}, Landroid/view/Window;->openPanel(ILandroid/view/KeyEvent;)V

    .line 90
    return-void
.end method
