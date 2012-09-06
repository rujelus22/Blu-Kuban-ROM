.class Lcom/google/googlenav/mylocationnotifier/b;
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
    .line 126
    iput-object p1, p0, Lcom/google/googlenav/mylocationnotifier/b;->a:Lcom/google/googlenav/mylocationnotifier/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 129
    invoke-static {}, Lcom/google/googlenav/actionbar/a;->a()Lcom/google/googlenav/actionbar/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/actionbar/a;->j()V

    .line 130
    invoke-static {}, Lcom/google/googlenav/actionbar/a;->a()Lcom/google/googlenav/actionbar/a;

    move-result-object v0

    const v1, 0x7f020219

    const/16 v2, 0x2af

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/googlenav/actionbar/a;->a(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    .line 132
    return-void
.end method
