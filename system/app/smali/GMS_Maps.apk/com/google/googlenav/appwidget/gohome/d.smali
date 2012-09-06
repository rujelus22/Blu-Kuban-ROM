.class Lcom/google/googlenav/appwidget/gohome/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;


# direct methods
.method constructor <init>(Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 320
    iput-object p1, p0, Lcom/google/googlenav/appwidget/gohome/d;->a:Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter

    .prologue
    .line 323
    const/16 v0, 0x45

    const-string v1, "g"

    invoke-static {v0, v1}, LaT/k;->a(ILjava/lang/String;)V

    .line 325
    iget-object v0, p0, Lcom/google/googlenav/appwidget/gohome/d;->a:Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;

    invoke-static {v0}, Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;->f(Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;)V

    .line 326
    return-void
.end method
