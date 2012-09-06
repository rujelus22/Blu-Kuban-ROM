.class public Lcom/google/googlenav/ui/view/E;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/ui/view/J;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 1062
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/googlenav/ui/view/E;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1063
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1056
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1057
    iput-object p1, p0, Lcom/google/googlenav/ui/view/E;->b:Ljava/lang/String;

    .line 1058
    iput-object p2, p0, Lcom/google/googlenav/ui/view/E;->a:Ljava/lang/String;

    .line 1059
    return-void
.end method
