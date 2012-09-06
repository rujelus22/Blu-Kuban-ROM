.class Lcom/google/googlenav/friend/ar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/google/googlenav/friend/aq;


# direct methods
.method constructor <init>(Lcom/google/googlenav/friend/aq;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lcom/google/googlenav/friend/ar;->b:Lcom/google/googlenav/friend/aq;

    iput p2, p0, Lcom/google/googlenav/friend/ar;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/googlenav/friend/ar;->b:Lcom/google/googlenav/friend/aq;

    iget v1, p0, Lcom/google/googlenav/friend/ar;->a:I

    invoke-static {v0, v1}, Lcom/google/googlenav/friend/aq;->a(Lcom/google/googlenav/friend/aq;I)V

    .line 52
    return-void
.end method
