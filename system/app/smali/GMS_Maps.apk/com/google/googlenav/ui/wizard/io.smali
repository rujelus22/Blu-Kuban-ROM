.class Lcom/google/googlenav/ui/wizard/io;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/in;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/in;)V
    .registers 2
    .parameter

    .prologue
    .line 374
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/io;->a:Lcom/google/googlenav/ui/wizard/in;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3
    .parameter

    .prologue
    .line 377
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/io;->a:Lcom/google/googlenav/ui/wizard/in;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/in;->a:Lcom/google/googlenav/ui/wizard/ij;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ij;->a()V

    .line 378
    return-void
.end method
