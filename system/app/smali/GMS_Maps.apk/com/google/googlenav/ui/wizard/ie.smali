.class Lcom/google/googlenav/ui/wizard/ie;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/id;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/id;)V
    .registers 2
    .parameter

    .prologue
    .line 145
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/ie;->a:Lcom/google/googlenav/ui/wizard/id;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3
    .parameter

    .prologue
    .line 148
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ie;->a:Lcom/google/googlenav/ui/wizard/id;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/id;->a()V

    .line 149
    return-void
.end method
