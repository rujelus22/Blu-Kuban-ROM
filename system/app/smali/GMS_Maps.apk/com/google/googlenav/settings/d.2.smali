.class Lcom/google/googlenav/settings/D;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/aP;

.field final synthetic b:Lcom/google/googlenav/settings/LegalActivity;


# direct methods
.method constructor <init>(Lcom/google/googlenav/settings/LegalActivity;Lcom/google/googlenav/aP;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 148
    iput-object p1, p0, Lcom/google/googlenav/settings/D;->b:Lcom/google/googlenav/settings/LegalActivity;

    iput-object p2, p0, Lcom/google/googlenav/settings/D;->a:Lcom/google/googlenav/aP;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3
    .parameter

    .prologue
    .line 151
    iget-object v0, p0, Lcom/google/googlenav/settings/D;->a:Lcom/google/googlenav/aP;

    invoke-virtual {v0}, Lcom/google/googlenav/aP;->Z()V

    .line 152
    return-void
.end method
