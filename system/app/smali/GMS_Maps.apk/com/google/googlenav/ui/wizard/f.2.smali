.class public Lcom/google/googlenav/ui/wizard/F;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z

.field public b:I

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZI)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-boolean p2, p0, Lcom/google/googlenav/ui/wizard/F;->a:Z

    .line 75
    iput p3, p0, Lcom/google/googlenav/ui/wizard/F;->b:I

    .line 76
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/F;->c:Ljava/lang/String;

    .line 77
    return-void
.end method
