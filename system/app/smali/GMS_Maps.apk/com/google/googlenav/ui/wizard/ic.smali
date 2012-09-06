.class Lcom/google/googlenav/ui/wizard/ic;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/ib;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/ib;)V
    .registers 2
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/ic;->a:Lcom/google/googlenav/ui/wizard/ib;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 59
    const/16 v0, 0x54

    if-ne p2, v0, :cond_6

    .line 60
    const/4 v0, 0x1

    .line 62
    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
