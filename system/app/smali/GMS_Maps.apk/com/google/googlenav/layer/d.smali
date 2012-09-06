.class Lcom/google/googlenav/layer/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/googlenav/layer/b;


# direct methods
.method constructor <init>(Lcom/google/googlenav/layer/b;)V
    .registers 2
    .parameter

    .prologue
    .line 77
    iput-object p1, p0, Lcom/google/googlenav/layer/d;->a:Lcom/google/googlenav/layer/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 81
    iget-object v0, p0, Lcom/google/googlenav/layer/d;->a:Lcom/google/googlenav/layer/b;

    invoke-virtual {v0}, Lcom/google/googlenav/layer/b;->b()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/layer/LayerInfoProvider;->a:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 82
    return-void
.end method
