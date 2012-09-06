.class Lcom/estrongs/android/pop/view/a/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic a:Ljava/lang/String;

.field private final synthetic b:Landroid/app/Activity;

.field private final synthetic c:[Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/app/Activity;[Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/estrongs/android/pop/view/a/b;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/estrongs/android/pop/view/a/b;->b:Landroid/app/Activity;

    iput-object p3, p0, Lcom/estrongs/android/pop/view/a/b;->c:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    const/4 v2, 0x0

    invoke-static {}, Lcom/estrongs/android/util/ah;->b()Lcom/estrongs/android/util/ah;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/view/a/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/util/ah;->a(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/estrongs/android/util/ah;->b()Lcom/estrongs/android/util/ah;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/view/a/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/util/ah;->c(Ljava/lang/String;Z)V

    if-nez p2, :cond_1d

    iget-object v0, p0, Lcom/estrongs/android/pop/view/a/b;->b:Landroid/app/Activity;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/a/b;->a:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/pop/view/a/a;->a(Landroid/app/Activity;Ljava/lang/String;Z)V

    :cond_1c
    :goto_1c
    return-void

    :cond_1d
    const/4 v0, 0x1

    if-ne p2, v0, :cond_28

    iget-object v0, p0, Lcom/estrongs/android/pop/view/a/b;->b:Landroid/app/Activity;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/a/b;->a:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/pop/view/a/a;->a(Landroid/app/Activity;Ljava/lang/String;I)V

    goto :goto_1c

    :cond_28
    const/4 v0, 0x2

    if-ne p2, v0, :cond_33

    iget-object v0, p0, Lcom/estrongs/android/pop/view/a/b;->b:Landroid/app/Activity;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/a/b;->a:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/pop/view/a/a;->b(Landroid/app/Activity;Ljava/lang/String;I)V

    goto :goto_1c

    :cond_33
    const/4 v0, 0x3

    if-ne p2, v0, :cond_1c

    iget-object v0, p0, Lcom/estrongs/android/pop/view/a/b;->b:Landroid/app/Activity;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/a/b;->c:[Ljava/lang/String;

    iget-object v2, p0, Lcom/estrongs/android/pop/view/a/b;->a:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/pop/view/a/a;->b(Landroid/app/Activity;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1c
.end method
