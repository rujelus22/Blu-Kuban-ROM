.class public Lcom/google/ads/mediation/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/google/ads/AdRequest;

.field private b:Z

.field private c:Z


# direct methods
.method public constructor <init>(Lcom/google/ads/AdRequest;Landroid/content/Context;Z)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/mediation/a;->a:Lcom/google/ads/AdRequest;

    iput-boolean p3, p0, Lcom/google/ads/mediation/a;->c:Z

    if-nez p2, :cond_d

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/mediation/a;->b:Z

    :goto_c
    return-void

    :cond_d
    invoke-virtual {p1, p2}, Lcom/google/ads/AdRequest;->b(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/ads/mediation/a;->b:Z

    goto :goto_c
.end method
