.class final Lcom/github/droidfu/activities/c;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field final synthetic a:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .registers 2
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lcom/github/droidfu/activities/c;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 86
    iget-object v0, p0, Lcom/github/droidfu/activities/c;->a:Landroid/app/Activity;

    invoke-virtual {v0, p2, p3}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 87
    const/4 v0, 0x0

    return v0
.end method
