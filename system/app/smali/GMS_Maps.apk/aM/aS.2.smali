.class public LaM/aS;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Ljava/lang/String;

.field final b:Ljava/lang/String;

.field final c:I

.field final d:Z

.field e:Lcom/google/googlenav/ui/aV;


# direct methods
.method public constructor <init>(Ljava/lang/String;IZ)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    sget-object v0, Lcom/google/googlenav/ui/aV;->aR:Lcom/google/googlenav/ui/aV;

    iput-object v0, p0, LaM/aS;->e:Lcom/google/googlenav/ui/aV;

    .line 77
    iput-object p1, p0, LaM/aS;->a:Ljava/lang/String;

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, LaM/aS;->b:Ljava/lang/String;

    .line 79
    iput p2, p0, LaM/aS;->c:I

    .line 80
    iput-boolean p3, p0, LaM/aS;->d:Z

    .line 81
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IZ)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    sget-object v0, Lcom/google/googlenav/ui/aV;->aR:Lcom/google/googlenav/ui/aV;

    iput-object v0, p0, LaM/aS;->e:Lcom/google/googlenav/ui/aV;

    .line 84
    iput-object p1, p0, LaM/aS;->a:Ljava/lang/String;

    .line 85
    iput-object p2, p0, LaM/aS;->b:Ljava/lang/String;

    .line 86
    iput p3, p0, LaM/aS;->c:I

    .line 87
    iput-boolean p4, p0, LaM/aS;->d:Z

    .line 88
    return-void
.end method
