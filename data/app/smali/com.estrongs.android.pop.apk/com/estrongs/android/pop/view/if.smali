.class Lcom/estrongs/android/pop/view/if;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/KuaipanGuide;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/KuaipanGuide;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/view/if;->a:Lcom/estrongs/android/pop/view/KuaipanGuide;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "shownet"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/estrongs/android/pop/view/if;->a:Lcom/estrongs/android/pop/view/KuaipanGuide;

    const/4 v2, -0x1

    invoke-virtual {v0, v2, v1}, Lcom/estrongs/android/pop/view/KuaipanGuide;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/if;->a:Lcom/estrongs/android/pop/view/KuaipanGuide;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/KuaipanGuide;->finish()V

    return-void
.end method
