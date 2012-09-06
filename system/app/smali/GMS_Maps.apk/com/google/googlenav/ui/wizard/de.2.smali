.class abstract Lcom/google/googlenav/ui/wizard/dE;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/android/R;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/dp;


# direct methods
.method private constructor <init>(Lcom/google/googlenav/ui/wizard/dp;)V
    .registers 2
    .parameter

    .prologue
    .line 1805
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/dE;->a:Lcom/google/googlenav/ui/wizard/dp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/googlenav/ui/wizard/dp;Lcom/google/googlenav/ui/wizard/dq;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1805
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/dE;-><init>(Lcom/google/googlenav/ui/wizard/dp;)V

    return-void
.end method


# virtual methods
.method public a(IILandroid/content/Intent;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1808
    if-eqz p2, :cond_4

    if-nez p3, :cond_5

    .line 1813
    :cond_4
    :goto_4
    return-void

    .line 1812
    :cond_5
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/googlenav/ui/wizard/dE;->b(IILandroid/content/Intent;)V

    goto :goto_4
.end method

.method protected abstract b(IILandroid/content/Intent;)V
.end method
