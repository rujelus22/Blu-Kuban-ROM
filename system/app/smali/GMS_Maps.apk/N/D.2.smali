.class public Ln/D;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ln/B;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ln/C;
    .registers 3

    .prologue
    .line 96
    new-instance v0, Ln/C;

    iget-object v1, p0, Ln/D;->a:Ln/B;

    invoke-direct {v0, v1}, Ln/C;-><init>(Ln/B;)V

    return-object v0
.end method

.method public a(Ln/B;)Ln/D;
    .registers 2
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Ln/D;->a:Ln/B;

    .line 92
    return-object p0
.end method
