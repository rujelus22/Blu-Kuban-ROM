.class Lcom/google/googlenav/ui/wizard/bS;
.super Lcom/google/googlenav/ui/android/ac;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/bO;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/bO;)V
    .registers 2
    .parameter

    .prologue
    .line 272
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/bS;->a:Lcom/google/googlenav/ui/wizard/bO;

    invoke-direct {p0}, Lcom/google/googlenav/ui/android/ac;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 275
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bS;->a:Lcom/google/googlenav/ui/wizard/bO;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/bO;->a:Lcom/google/googlenav/ui/wizard/bM;

    const/16 v1, 0x1f4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v3, v2}, Lcom/google/googlenav/ui/wizard/bM;->a(IILjava/lang/Object;)Z

    .line 276
    return-void
.end method
