.class Lcom/google/googlenav/ui/wizard/fk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/fh;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/fh;)V
    .registers 2
    .parameter

    .prologue
    .line 138
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/fk;->a:Lcom/google/googlenav/ui/wizard/fh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter

    .prologue
    .line 140
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fk;->a:Lcom/google/googlenav/ui/wizard/fh;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/fh;->a()V

    .line 141
    return-void
.end method
