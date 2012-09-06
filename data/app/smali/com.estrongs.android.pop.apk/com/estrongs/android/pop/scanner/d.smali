.class Lcom/estrongs/android/pop/scanner/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field private final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/scanner/d;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3

    iget-object v0, p0, Lcom/estrongs/android/pop/scanner/d;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/scanner/a;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/scanner/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/scanner/a;->c()V

    return-void
.end method
