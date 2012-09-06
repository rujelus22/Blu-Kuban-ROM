.class LaQ/ay;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:LaS/h;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:LaQ/ao;


# direct methods
.method constructor <init>(LaQ/ao;LaS/h;Landroid/content/Context;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 525
    iput-object p1, p0, LaQ/ay;->c:LaQ/ao;

    iput-object p2, p0, LaQ/ay;->a:LaS/h;

    iput-object p3, p0, LaQ/ay;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 4
    .parameter

    .prologue
    .line 528
    iget-object v0, p0, LaQ/ay;->a:LaS/h;

    iget-object v1, p0, LaQ/ay;->c:LaQ/ao;

    invoke-static {v1}, LaQ/ao;->a(LaQ/ao;)Lcom/google/googlenav/ai;

    move-result-object v1

    invoke-static {v0, v1}, LaS/a;->a(LaS/h;Lcom/google/googlenav/ai;)V

    .line 530
    new-instance v0, Lcom/google/googlenav/ui/android/c;

    iget-object v1, p0, LaQ/ay;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/googlenav/ui/android/c;-><init>(Landroid/content/Context;)V

    .line 531
    iget-object v1, p0, LaQ/ay;->a:LaS/h;

    invoke-virtual {v1}, LaS/h;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/android/c;->b(Ljava/lang/String;)V

    .line 532
    return-void
.end method
