.class final Lcom/google/ads/u;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private a:Lcom/google/ads/a/q;


# direct methods
.method public constructor <init>(Lcom/google/ads/a/q;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/u;->a:Lcom/google/ads/a/q;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 7

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "u"

    const-string v2, "market://details?id=com.google.android.apps.plus"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/ads/u;->a:Lcom/google/ads/a/q;

    new-instance v2, Lcom/google/ads/a/r;

    const-string v3, "intent"

    invoke-direct {v2, v3, v0}, Lcom/google/ads/a/r;-><init>(Ljava/lang/String;Ljava/util/HashMap;)V

    invoke-static {v1, v2}, Lcom/google/ads/AdActivity;->a(Lcom/google/ads/a/q;Lcom/google/ads/a/r;)V

    return-void
.end method
