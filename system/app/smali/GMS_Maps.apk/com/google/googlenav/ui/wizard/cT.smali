.class public Lcom/google/googlenav/ui/wizard/ct;
.super Lcom/google/googlenav/ui/wizard/C;
.source "SourceFile"


# instance fields
.field private a:Lcom/google/googlenav/L;


# direct methods
.method protected constructor <init>(Lcom/google/googlenav/ui/wizard/ju;)V
    .registers 2
    .parameter

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/C;-><init>(Lcom/google/googlenav/ui/wizard/ju;)V

    .line 28
    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/ct;)Lcom/google/googlenav/L;
    .registers 2
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ct;->a:Lcom/google/googlenav/L;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/google/googlenav/L;)V
    .registers 2
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/ct;->a:Lcom/google/googlenav/L;

    .line 32
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/ct;->j()V

    .line 33
    return-void
.end method

.method protected b()V
    .registers 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ct;->h:Lcom/google/googlenav/ui/view/android/bb;

    if-eqz v0, :cond_9

    .line 39
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ct;->h:Lcom/google/googlenav/ui/view/android/bb;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bb;->dismiss()V

    .line 41
    :cond_9
    new-instance v0, Lcom/google/googlenav/ui/wizard/cu;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/wizard/cu;-><init>(Lcom/google/googlenav/ui/wizard/ct;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/ct;->h:Lcom/google/googlenav/ui/view/android/bb;

    .line 42
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ct;->h:Lcom/google/googlenav/ui/view/android/bb;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bb;->show()V

    .line 43
    return-void
.end method
