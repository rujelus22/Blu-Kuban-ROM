.class public Ln/u;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ln/t;
    .registers 3

    .prologue
    .line 85
    new-instance v0, Ln/t;

    iget-object v1, p0, Ln/u;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ln/t;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ln/u;
    .registers 2
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Ln/u;->a:Ljava/lang/String;

    .line 81
    return-object p0
.end method
