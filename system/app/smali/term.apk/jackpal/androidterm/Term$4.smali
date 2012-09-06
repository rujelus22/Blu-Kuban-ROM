.class Ljackpal/androidterm/Term$4;
.super Ljava/lang/Object;
.source "Term.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljackpal/androidterm/Term;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljackpal/androidterm/Term;


# direct methods
.method constructor <init>(Ljackpal/androidterm/Term;)V
    .registers 2
    .parameter

    .prologue
    .line 238
    iput-object p1, p0, Ljackpal/androidterm/Term$4;->this$0:Ljackpal/androidterm/Term;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 240
    const/4 v0, 0x4

    if-ne p2, v0, :cond_1f

    iget-object v0, p0, Ljackpal/androidterm/Term$4;->this$0:Ljackpal/androidterm/Term;

    #getter for: Ljackpal/androidterm/Term;->mActionBarMode:I
    invoke-static {v0}, Ljackpal/androidterm/Term;->access$800(Ljackpal/androidterm/Term;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1f

    iget-object v0, p0, Ljackpal/androidterm/Term$4;->this$0:Ljackpal/androidterm/Term;

    #getter for: Ljackpal/androidterm/Term;->mActionBar:Ljackpal/androidterm/compat/ActionBarCompat;
    invoke-static {v0}, Ljackpal/androidterm/Term;->access$700(Ljackpal/androidterm/Term;)Ljackpal/androidterm/compat/ActionBarCompat;

    move-result-object v0

    invoke-virtual {v0}, Ljackpal/androidterm/compat/ActionBarCompat;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 243
    iget-object v0, p0, Ljackpal/androidterm/Term$4;->this$0:Ljackpal/androidterm/Term;

    invoke-virtual {v0, p2, p3}, Ljackpal/androidterm/Term;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 244
    const/4 v0, 0x1

    .line 246
    :goto_1e
    return v0

    :cond_1f
    const/4 v0, 0x0

    goto :goto_1e
.end method
