.class Lcom/google/android/maps/driveabout/app/ep;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/dD;

.field private final b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/app/dD;Landroid/content/Context;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 215
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/ep;->a:Lcom/google/android/maps/driveabout/app/dD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 216
    iput-object p2, p0, Lcom/google/android/maps/driveabout/app/ep;->b:Landroid/content/Context;

    .line 217
    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 221
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_8

    .line 222
    const/4 v0, 0x0

    .line 234
    :goto_7
    return v0

    .line 224
    :cond_8
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/ep;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/RmiPreference;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/ep;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/RmiPreference;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/ep;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/maps/driveabout/app/RmiPreference;->d(Landroid/content/Context;)I

    move-result v1

    if-ne v0, v1, :cond_31

    .line 231
    const-string v0, "I"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/dh;->a(Ljava/lang/String;Z)V

    .line 232
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/ep;->a:Lcom/google/android/maps/driveabout/app/dD;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/dD;->n()Z

    move-result v0

    goto :goto_7

    .line 234
    :cond_31
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/ep;->a:Lcom/google/android/maps/driveabout/app/dD;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/dD;->a(Lcom/google/android/maps/driveabout/app/dD;)Ls/n;

    move-result-object v0

    invoke-virtual {v0}, Ls/n;->g()Ls/q;

    move-result-object v0

    invoke-virtual {v0, p3}, Ls/q;->a(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_7
.end method
