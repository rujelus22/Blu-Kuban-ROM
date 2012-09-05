.class abstract Lcom/google/googlenav/ui/wizard/cP;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/android/V;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/cA;


# direct methods
.method private constructor <init>(Lcom/google/googlenav/ui/wizard/cA;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/cP;->a:Lcom/google/googlenav/ui/wizard/cA;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/googlenav/ui/wizard/cA;Lcom/google/googlenav/ui/wizard/cB;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/cP;-><init>(Lcom/google/googlenav/ui/wizard/cA;)V

    return-void
.end method


# virtual methods
.method public a(IILandroid/content/Intent;)V
    .registers 4

    if-eqz p2, :cond_4

    if-nez p3, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/googlenav/ui/wizard/cP;->b(IILandroid/content/Intent;)V

    goto :goto_4
.end method

.method protected abstract b(IILandroid/content/Intent;)V
.end method
