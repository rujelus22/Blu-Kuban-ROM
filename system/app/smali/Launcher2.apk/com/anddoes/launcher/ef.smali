.class final Lcom/anddoes/launcher/ef;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/anddoes/launcher/Launcher;


# direct methods
.method constructor <init>(Lcom/anddoes/launcher/Launcher;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anddoes/launcher/ef;->a:Lcom/anddoes/launcher/Launcher;

    .line 1993
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 1996
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-nez v0, :cond_d

    .line 1997
    iget-object v0, p0, Lcom/anddoes/launcher/ef;->a:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v0, p1}, Lcom/anddoes/launcher/Launcher;->onTouchDownAllAppsButton(Landroid/view/View;)V

    .line 1999
    :cond_d
    const/4 v0, 0x0

    return v0
.end method
