.class public Lcom/google/googlenav/ui/view/t;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/googlenav/ui/bd;

.field public final b:Lcom/google/googlenav/ui/bd;

.field public final c:Lcom/google/googlenav/ui/bd;

.field public final d:Z


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/bd;Lcom/google/googlenav/ui/bd;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 1099
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/googlenav/ui/view/t;-><init>(Lcom/google/googlenav/ui/bd;Lcom/google/googlenav/ui/bd;Lcom/google/googlenav/ui/bd;Z)V

    .line 1100
    return-void
.end method

.method public constructor <init>(Lcom/google/googlenav/ui/bd;Lcom/google/googlenav/ui/bd;Lcom/google/googlenav/ui/bd;Z)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1105
    iput-object p1, p0, Lcom/google/googlenav/ui/view/t;->a:Lcom/google/googlenav/ui/bd;

    .line 1106
    iput-object p2, p0, Lcom/google/googlenav/ui/view/t;->b:Lcom/google/googlenav/ui/bd;

    .line 1107
    iput-object p3, p0, Lcom/google/googlenav/ui/view/t;->c:Lcom/google/googlenav/ui/bd;

    .line 1108
    iput-boolean p4, p0, Lcom/google/googlenav/ui/view/t;->d:Z

    .line 1109
    return-void
.end method
