.class Lcom/google/googlenav/intersectionexplorer/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/googlenav/intersectionexplorer/d;


# direct methods
.method constructor <init>(Lcom/google/googlenav/intersectionexplorer/d;)V
    .registers 2
    .parameter

    .prologue
    .line 754
    iput-object p1, p0, Lcom/google/googlenav/intersectionexplorer/g;->a:Lcom/google/googlenav/intersectionexplorer/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 758
    iget-object v0, p0, Lcom/google/googlenav/intersectionexplorer/g;->a:Lcom/google/googlenav/intersectionexplorer/d;

    const-string v1, "Loading failed"

    invoke-virtual {v0, v1}, Lcom/google/googlenav/intersectionexplorer/d;->a(Ljava/lang/String;)V

    .line 759
    return-void
.end method
