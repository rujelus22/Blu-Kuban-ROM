.class Lcom/google/googlenav/mylocationnotifier/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/googlenav/mylocationnotifier/a;


# direct methods
.method constructor <init>(Lcom/google/googlenav/mylocationnotifier/a;)V
    .registers 2
    .parameter

    .prologue
    .line 155
    iput-object p1, p0, Lcom/google/googlenav/mylocationnotifier/c;->a:Lcom/google/googlenav/mylocationnotifier/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/google/googlenav/mylocationnotifier/c;->a:Lcom/google/googlenav/mylocationnotifier/a;

    iget-object v0, v0, Lcom/google/googlenav/mylocationnotifier/a;->d:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->show()V

    .line 159
    return-void
.end method
